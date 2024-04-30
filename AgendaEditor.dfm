inherited FrmAgendaEditor: TFrmAgendaEditor
  AutoScroll = True
  Caption = 'Agenda Editor'
  Constraints.MinHeight = 0
  Constraints.MinWidth = 0
  ShowHint = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object LbUCResponsavel: TLabel [0]
    Left = 0
    Top = -10
    Width = 86
    Height = 13
    Caption = 'LbUCResponsavel'
    Visible = False
  end
  object PnlSeguidores: TPanel [1]
    Left = 57
    Top = 35
    Width = 610
    Height = 358
    Caption = 'Seguidores'
    TabOrder = 2
    Visible = False
    object dxLayoutControl4: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 608
      Height = 356
      Align = alClient
      TabOrder = 0
      object cxGrid1: TcxGrid
        Left = 15
        Top = 60
        Width = 578
        Height = 238
        TabOrder = 4
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DSAgenda_Seguidor
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1CODUSUARIO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODUSUARIO'
          end
          object cxGrid1DBTableView1USUARIO: TcxGridDBColumn
            Caption = 'Usu'#225'rio'
            DataBinding.FieldName = 'USUARIO'
            Width = 397
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxButton2: TcxButton
        Left = 518
        Top = 316
        Width = 75
        Height = 25
        Caption = 'Fechar'
        TabOrder = 5
        OnClick = cxButton2Click
      end
      object LblSegUsuario: TcxLabel
        Left = 73
        Top = 32
        AutoSize = False
        Style.HotTrack = False
        Transparent = True
        Height = 22
        Width = 442
      end
      object BtnAdicionarProduto: TcxButton
        Left = 521
        Top = 21
        Width = 33
        Height = 33
        OptionsImage.ImageIndex = 2
        OptionsImage.Images = FrmPrincipal.ImgListBotoes32
        TabOrder = 2
        OnClick = BtnAdicionarProdutoClick
      end
      object BtnRemoverProduto: TcxButton
        Left = 560
        Top = 21
        Width = 33
        Height = 33
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = FrmPrincipal.ImgListBotoes32
        TabOrder = 3
        TabStop = False
        OnClick = BtnRemoverProdutoClick
      end
      object EdtSegCodUsuario: TcxButtonEdit
        Left = 15
        Top = 33
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = EdtSegCodUsuarioPropertiesButtonClick
        Properties.OnChange = EdtCodUsuarioPropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        TabOrder = 0
        OnKeyDown = EdtSegCodUsuarioKeyDown
        Width = 52
      end
      object dxLayoutControl4Group_Root: TdxLayoutGroup
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
      object dxLayoutControl4Item1: TdxLayoutItem
        Parent = dxLayoutControl4Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        Control = cxGrid1
        ControlOptions.OriginalHeight = 277
        ControlOptions.OriginalWidth = 598
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl4Item2: TdxLayoutItem
        Parent = dxLayoutControl4Group_Root
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton2'
        CaptionOptions.Visible = False
        Control = cxButton2
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutControl4Item4: TdxLayoutItem
        Parent = dxLayoutControl4Group2
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Text = 'cxLabel1'
        CaptionOptions.Visible = False
        Control = LblSegUsuario
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 477
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl4Group2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl4Group_Root
        LayoutDirection = ldHorizontal
        Index = 0
      end
      object dxLayoutControl4Item5: TdxLayoutItem
        Parent = dxLayoutControl4Group2
        AlignVert = avBottom
        CaptionOptions.Visible = False
        Control = BtnAdicionarProduto
        ControlOptions.OriginalHeight = 33
        ControlOptions.OriginalWidth = 33
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl4Item6: TdxLayoutItem
        Parent = dxLayoutControl4Group2
        AlignVert = avBottom
        CaptionOptions.Visible = False
        Control = BtnRemoverProduto
        ControlOptions.OriginalHeight = 33
        ControlOptions.OriginalWidth = 33
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutControl4SeparatorItem1: TdxLayoutSeparatorItem
        Parent = dxLayoutControl4Group_Root
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
        CaptionOptions.Text = 'Separator'
        Index = 2
      end
      object dxLayoutControl4Item7: TdxLayoutItem
        Parent = dxLayoutControl4Group2
        CaptionOptions.Text = 'Usu'#225'rio'
        CaptionOptions.Layout = clTop
        Control = EdtSegCodUsuario
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 52
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  object PnlConsultaProduto: TPanel [2]
    Left = 59
    Top = 109
    Width = 542
    Height = 225
    TabOrder = 4
    Visible = False
    OnExit = PnlConsultaProdutoExit
    object dxLayoutControl2: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 540
      Height = 223
      Align = alClient
      TabOrder = 0
      object BtnProdutoIrConsulta: TcxButton
        Left = 115
        Top = 189
        Width = 133
        Height = 24
        Hint = 
          'Precione a tecla F1 ou aperte no bot'#227'o para efetuar a sub-consul' +
          'ta.'
        Caption = 'Ir p/ Consulta'
        OptionsImage.Spacing = 0
        TabOrder = 2
        OnClick = BtnProdutoIrConsultaClick
      end
      object BtnProdutoIrCadastro: TcxButton
        Left = 254
        Top = 189
        Width = 118
        Height = 24
        Hint = 
          'Precione a tecla F1 ou aperte no bot'#227'o para efetuar a sub-consul' +
          'ta.'
        Caption = 'Ir p/ Cadastro'
        OptionsImage.Spacing = 0
        TabOrder = 3
      end
      object BtnProdutoSelecionar: TcxButton
        Left = 378
        Top = 189
        Width = 152
        Height = 24
        Hint = 
          'Precione a tecla F1 ou aperte no bot'#227'o para efetuar a sub-consul' +
          'ta.'
        Caption = 'Selecionar Produto'
        OptionsImage.Spacing = 0
        TabOrder = 4
        OnClick = BtnProdutoSelecionarClick
      end
      object GridProdProced: TcxGrid
        Left = 10
        Top = 10
        Width = 520
        Height = 173
        BorderStyle = cxcbsNone
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.GridModeBufferCount = 50
          DataController.DataSource = DSProduto
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Click aqui para definir um filtro'
          NewItemRow.InfoText = 'Click aqui para adicionar um novo registro'
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
          OptionsView.CellAutoHeight = True
          OptionsView.CellTextMaxLineCount = 2
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView2CODIGO: TcxGridDBColumn
            Caption = 'C'#243'd.'
            DataBinding.FieldName = 'CODIGO'
            Width = 46
          end
          object cxGridDBTableView2DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DESCRICAO'
            Width = 402
          end
          object cxGridDBTableView2VALOR: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VALOR'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = 'R$ 0.00'
            Properties.Nullable = False
            Width = 72
          end
        end
        object cxGridLevel2: TcxGridLevel
          Caption = 'Relat'#243'rio'
          GridView = cxGridDBTableView2
        end
      end
      object BtnProdutoFechar: TcxButton
        Left = 10
        Top = 189
        Width = 99
        Height = 24
        Hint = 
          'Precione a tecla F1 ou aperte no bot'#227'o para efetuar a sub-consul' +
          'ta.'
        Caption = 'Fechar'
        OptionsImage.Spacing = 0
        TabOrder = 1
        OnClick = BtnProdutoFecharClick
      end
      object dxLayoutControl2Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControl2Item1: TdxLayoutItem
        Parent = dxLayoutControl2Group1
        AlignHorz = ahClient
        CaptionOptions.Visible = False
        Control = BtnProdutoIrConsulta
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 133
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl2Item2: TdxLayoutItem
        Parent = dxLayoutControl2Group1
        AlignHorz = ahClient
        CaptionOptions.Visible = False
        Control = BtnProdutoIrCadastro
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 118
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl2Item3: TdxLayoutItem
        Parent = dxLayoutControl2Group1
        AlignHorz = ahClient
        CaptionOptions.Visible = False
        Control = BtnProdutoSelecionar
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 152
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutControl2Item4: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        Control = GridProdProced
        ControlOptions.OriginalHeight = 173
        ControlOptions.OriginalWidth = 520
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl2Group1: TdxLayoutGroup
        Parent = dxLayoutControl2Group_Root
        AlignVert = avBottom
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutControl2Item5: TdxLayoutItem
        Parent = dxLayoutControl2Group1
        AlignHorz = ahClient
        CaptionOptions.Visible = False
        Control = BtnProdutoFechar
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 99
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  object PnlConsultaEquipamento: TPanel [3]
    Left = 174
    Top = 163
    Width = 550
    Height = 225
    TabOrder = 5
    Visible = False
    OnExit = PnlConsultaEquipamentoExit
    object dxLayoutControl3: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 548
      Height = 223
      Align = alClient
      TabOrder = 0
      object BtnEquipFechar: TcxButton
        Left = 10
        Top = 189
        Width = 102
        Height = 24
        Hint = 
          'Precione a tecla F1 ou aperte no bot'#227'o para efetuar a sub-consul' +
          'ta.'
        Caption = 'Fechar'
        OptionsImage.Spacing = 0
        TabOrder = 1
        OnClick = BtnEquipFecharClick
      end
      object BtnEquipIrConsulta: TcxButton
        Left = 252
        Top = 189
        Width = 127
        Height = 24
        Hint = 
          'Precione a tecla F1 ou aperte no bot'#227'o para efetuar a sub-consul' +
          'ta.'
        Caption = 'Ir p/ Consulta'
        OptionsImage.Spacing = 0
        TabOrder = 3
      end
      object BtnEquipIrCadastro: TcxButton
        Left = 118
        Top = 189
        Width = 128
        Height = 24
        Hint = 
          'Precione a tecla F1 ou aperte no bot'#227'o para efetuar a sub-consul' +
          'ta.'
        Caption = 'Ir p/ Cadastro'
        OptionsImage.Spacing = 0
        TabOrder = 2
      end
      object BtnEquipSelecionar: TcxButton
        Left = 385
        Top = 189
        Width = 153
        Height = 24
        Hint = 
          'Precione a tecla F1 ou aperte no bot'#227'o para efetuar a sub-consul' +
          'ta.'
        Caption = 'Selecionar Equipamento'
        OptionsImage.Spacing = 0
        TabOrder = 4
        OnClick = BtnEquipSelecionarClick
      end
      object cxGrid2: TcxGrid
        Left = 10
        Top = 10
        Width = 528
        Height = 173
        BorderStyle = cxcbsNone
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.GridModeBufferCount = 50
          DataController.DataSource = DSEquipamento
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Click aqui para definir um filtro'
          NewItemRow.InfoText = 'Click aqui para adicionar um novo registro'
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
          OptionsView.CellAutoHeight = True
          OptionsView.CellTextMaxLineCount = 2
          OptionsView.GroupByBox = False
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'C'#243'd.'
            DataBinding.FieldName = 'CODIGO'
            Width = 53
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DESCRICAO'
            Width = 377
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VALOR'
            Width = 96
          end
        end
        object cxGridLevel1: TcxGridLevel
          Caption = 'Relat'#243'rio'
          GridView = cxGridDBTableView1
        end
      end
      object dxLayoutControl3Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControl3Item1: TdxLayoutItem
        Parent = dxLayoutControl3Group1
        AlignHorz = ahClient
        CaptionOptions.Visible = False
        Control = BtnEquipFechar
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 102
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl3Item2: TdxLayoutItem
        Parent = dxLayoutControl3Group1
        AlignHorz = ahClient
        CaptionOptions.Visible = False
        Control = BtnEquipIrConsulta
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 127
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl3Item3: TdxLayoutItem
        Parent = dxLayoutControl3Group1
        AlignHorz = ahClient
        CaptionOptions.Visible = False
        Control = BtnEquipIrCadastro
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 128
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl3Item4: TdxLayoutItem
        Parent = dxLayoutControl3Group1
        AlignHorz = ahClient
        CaptionOptions.Visible = False
        Control = BtnEquipSelecionar
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 153
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutControl3Item5: TdxLayoutItem
        Parent = dxLayoutControl3Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        Control = cxGrid2
        ControlOptions.OriginalHeight = 173
        ControlOptions.OriginalWidth = 528
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl3Group1: TdxLayoutGroup
        Parent = dxLayoutControl3Group_Root
        AlignVert = avBottom
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
    end
  end
  inherited lcMain: TdxLayoutControl
    inherited cxGroupBox1: TcxGroupBox
      ExplicitWidth = 507
      Width = 507
    end
    inherited btnFindTime: TcxButton
      Left = 523
      OnClick = nil
      ExplicitLeft = 523
    end
    inherited teSubject: TcxTextEdit
      Left = 163
      Top = 92
      ParentFont = False
      Properties.OnChange = nil
      StyleDisabled.Color = 15323062
      StyleHot.TextColor = 5525059
      TabOrder = 24
      OnKeyPress = teSubjectKeyPress
      ExplicitLeft = 163
      ExplicitTop = 92
      ExplicitWidth = 296
      Width = 296
    end
    inherited teLocation: TcxTextEdit
      Top = 118
      TabOrder = 27
      ExplicitTop = 118
      ExplicitWidth = 357
      Width = 357
    end
    inherited icbLabel: TcxImageComboBox
      Left = 478
      Top = 118
      AutoSize = False
      Properties.DropDownRows = 11
      TabOrder = 26
      ExplicitLeft = 478
      ExplicitTop = 118
      ExplicitWidth = 165
      ExplicitHeight = 21
      Height = 21
      Width = 165
    end
    inherited deStart: TcxDateEdit
      Top = 551
      TabOrder = 58
      ExplicitTop = 551
    end
    inherited teStart: TcxTimeEdit
      Top = 551
      TabOrder = 59
      ExplicitTop = 551
    end
    inherited cbAllDayEvent: TcxCheckBox
      Top = 551
      TabOrder = 60
      ExplicitTop = 551
    end
    inherited deEnd: TcxDateEdit
      Top = 578
      TabOrder = 61
      ExplicitTop = 578
    end
    inherited teEnd: TcxTimeEdit
      Top = 578
      TabOrder = 62
      ExplicitTop = 578
    end
    inherited seTaskComplete: TcxSpinEdit
      Top = 615
      Properties.OnChange = seTaskCompletePropertiesChange
      Properties.OnEditValueChanged = seTaskCompletePropertiesChange
      TabOrder = 63
      OnExit = seTaskCompleteExit
      ExplicitTop = 615
    end
    inherited cbxTaskStatus: TcxComboBox
      Top = 615
      Properties.OnChange = cbxTaskStatusPropertiesChange
      Properties.OnEditValueChanged = cbxTaskStatusPropertiesChange
      TabOrder = 64
      ExplicitTop = 615
    end
    inherited lbRecurrencePattern: TcxLabel
      Top = 652
      ExplicitTop = 652
      ExplicitWidth = 556
      Width = 556
    end
    inherited cbResources: TcxCheckComboBox
      Top = 672
      TabOrder = 66
      ExplicitTop = 672
      ExplicitWidth = 556
      Width = 556
    end
    inherited cbReminder: TcxCheckBox
      Top = 709
      TabOrder = 67
      ExplicitTop = 709
    end
    inherited cbReminderMinutesBeforeStart: TcxComboBox
      Top = 709
      TabOrder = 68
      ExplicitTop = 709
    end
    inherited icbShowTimeAs: TcxImageComboBox
      Top = 709
      TabOrder = 69
      ExplicitTop = 709
      ExplicitWidth = 355
      Width = 355
    end
    inherited meMessage: TcxMemo
      Left = 10000
      Top = 10000
      Enabled = False
      TabOrder = 75
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 185
      ExplicitHeight = 101
      Height = 101
      Width = 185
    end
    inherited btnOk: TcxButton
      Left = 350
      Top = 774
      Width = 66
      Height = 30
      Caption = 'Salvar'
      Default = False
      TabOrder = 71
      ExplicitLeft = 350
      ExplicitTop = 774
      ExplicitWidth = 66
      ExplicitHeight = 30
    end
    inherited btnCancel: TcxButton
      Left = 422
      Top = 774
      Width = 66
      Height = 30
      Caption = 'Cancelar'
      TabOrder = 72
      ExplicitLeft = 422
      ExplicitTop = 774
      ExplicitWidth = 66
      ExplicitHeight = 30
    end
    inherited btnDelete: TcxButton
      Left = 494
      Top = 774
      Width = 66
      Height = 30
      TabOrder = 73
      ExplicitLeft = 494
      ExplicitTop = 774
      ExplicitWidth = 66
      ExplicitHeight = 30
    end
    inherited btnRecurrence: TcxButton
      Left = 566
      Top = 774
      Width = 77
      Height = 30
      TabOrder = 74
      ExplicitLeft = 566
      ExplicitTop = 774
      ExplicitWidth = 77
      ExplicitHeight = 30
    end
    object EdtSolicitante: TcxTextEdit [22]
      Left = 526
      Top = 91
      Anchors = [akTop, akRight]
      TabOrder = 25
      Width = 117
    end
    object EdtCidadeÎCidades: TcxButtonEdit [23]
      Left = 106
      Top = 190
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnChange = EdtCodCidadePropertiesChange
      TabOrder = 31
      OnKeyPress = EdtCidadeÎCidadesKeyPress
      Width = 105
    end
    object LblCidadeÎCidadesÎDESCRICAO: TcxLabel [24]
      Left = 217
      Top = 190
      AutoSize = False
      ParentColor = False
      Style.HotTrack = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 318
      AnchorY = 201
    end
    object EdtEndereco: TcxTextEdit [25]
      Left = 106
      Top = 217
      Properties.OnChange = EdtResponsavelPropertiesChange
      TabOrder = 34
      Width = 369
    end
    object EdtNumero: TcxTextEdit [26]
      Left = 527
      Top = 217
      Properties.OnChange = EdtResponsavelPropertiesChange
      TabOrder = 35
      Width = 78
    end
    object EdtEmail: TcxTextEdit [27]
      Left = 106
      Top = 244
      Properties.OnChange = EdtResponsavelPropertiesChange
      TabOrder = 36
      Width = 472
    end
    object BtnSalvarAlteracoesCliente: TcxButton [28]
      Left = 584
      Top = 244
      Width = 21
      Height = 21
      Hint = 'F5 - Salvar altera'#231#245'es do cliente'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001E4E24C63C8B43FF0103012900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000029642FD86DD27CFF63C972FF4FAB5BFF0103022C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00002E6C34D87BDA8AFF70D27EFF6BD07AFF63C972FF50AC5BFF0104022D0000
        0000000000000000000000000000000000000000000000000000000000003273
        38D689E397FF7DDB8CFF72D181FF419549FF6CD17BFF63C972FF50AD5CFF0205
        03360000000000000000000000000000000000000000000000000000000071CC
        7DFF8CE399FF80D98DFF0E22107A0000000042964BFF6CD17BFF63C972FF52B0
        5EFF020603370000000000000000000000000000000000000000000000001D43
        229F63C06FFF1026127C00000000000000000000000043974CFF6CD17BFF63C9
        72FF50AD5CFF0204023000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000043974BFF6DD1
        7CFF63CA72FF50AD5CFF02040231000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000004196
        4AFF6DD17CFF63CA72FF51AE5DFF0104022F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000041954AFF6DD17CFF64CA72FF3A8942FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000041924AFE5EBE6CFF1431179E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      TabOrder = 37
      OnClick = BtnSalvarAlteracoesClienteClick
    end
    object EdtProcedimentoÎProduto: TcxButtonEdit [29]
      Left = 106
      Top = 311
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      Properties.OnChange = EdtCodProdProcedPropertiesChange
      TabOrder = 38
      Width = 53
    end
    object EdtProcedimentoÎProdutoÎDESCRICAO: TcxTextEdit [30]
      Left = 159
      Top = 311
      Properties.OnChange = EdtProdProcedPropertiesChange
      TabOrder = 39
      OnKeyDown = EdtProcedimentoÎProdutoÎDESCRICAOKeyDown
      Width = 318
    end
    object EdtProcedimentoÎProdutoÎVALOR: TcxCurrencyEdit [31]
      Left = 532
      Top = 311
      Properties.DisplayFormat = '0.00'
      Properties.OnChange = EdtValorProdProcedPropertiesChange
      TabOrder = 40
      Width = 73
    end
    object EdtCondicaoAgePagtoÎCondicaoPagto: TcxButtonEdit [32]
      Left = 106
      Top = 338
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnChange = EdtCodCondicaoPagtoPropertiesChange
      TabOrder = 41
      OnKeyPress = EdtCondicaoAgePagtoÎCondicaoPagtoKeyPress
      Width = 53
    end
    object LblCondicaoAgePagtoÎCondicaoPagtoÎDESCRICAO: TcxLabel [33]
      Left = 165
      Top = 338
      AutoSize = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 281
      AnchorY = 349
    end
    object EdtMensalidade: TcxCurrencyEdit [34]
      Left = 532
      Top = 338
      Properties.DisplayFormat = '0.00'
      Properties.OnChange = EdtMensalidadePropertiesChange
      TabOrder = 43
      Width = 73
    end
    object EdtSetorÎSetor: TcxButtonEdit [35]
      Left = 103
      Top = 365
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      Properties.OnChange = EdtCodAgendaSetorPropertiesChange
      TabOrder = 44
      OnExit = EdtSetorÎSetorExit
      OnKeyPress = EdtSetorÎSetorKeyPress
      Width = 53
    end
    object LblSetorÎSetorÎDESCRICAO: TcxLabel [36]
      Left = 162
      Top = 365
      AutoSize = False
      StyleHot.BorderColor = 10723488
      Properties.Alignment.Vert = taVCenter
      Properties.ShadowedColor = 7171437
      Transparent = True
      Height = 21
      Width = 257
      AnchorY = 376
    end
    object CbPrioridade: TcxImageComboBox [37]
      Left = 482
      Top = 365
      Properties.Items = <>
      Properties.OnChange = CbPrioridadePropertiesChange
      TabOrder = 46
      Width = 123
    end
    object EdtEquipamentoÎEquipamento: TcxButtonEdit [38]
      Left = 103
      Top = 419
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      Properties.OnChange = EdtCodEquipamentoPropertiesChange
      TabOrder = 48
      OnKeyPress = EdtEquipamentoÎEquipamentoKeyPress
      Width = 53
    end
    object EdtEquipamentoÎEquipamentoÎDESCRICAO: TcxTextEdit [39]
      Left = 162
      Top = 419
      Properties.OnChange = EdtEquipamentoPropertiesChange
      TabOrder = 49
      OnKeyDown = EdtEquipamentoÎEquipamentoÎDESCRICAOKeyDown
      Width = 443
    end
    object EdtCodResponsavel: TcxButtonEdit [40]
      Left = 103
      Top = 446
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = EdtCodResponsavelPropertiesButtonClick
      Properties.OnChange = EdtCodResponsavelPropertiesChange
      TabOrder = 50
      OnKeyDown = EdtCodResponsavelKeyDown
      OnKeyPress = EdtCodResponsavelKeyPress
      Width = 53
    end
    object EdtResponsavel: TcxTextEdit [41]
      Left = 162
      Top = 446
      Properties.OnChange = EdtResponsavelPropertiesChange
      TabOrder = 51
      Width = 266
    end
    object CBoxVisualiza: TcxComboBox [42]
      Left = 497
      Top = 446
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = CBoxVisualizaPropertiesChange
      TabOrder = 52
      Width = 108
    end
    object EdtFuncionarioÎPessoas: TcxButtonEdit [43]
      Left = 103
      Top = 473
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      Properties.OnChange = EdtCodFuncionarioPropertiesChange
      TabOrder = 53
      Width = 53
    end
    object EdtFuncionarioÎPessoasÎRAZAOSOCIAL: TcxTextEdit [44]
      Left = 162
      Top = 473
      Properties.OnChange = EdtFuncionarioPropertiesChange
      TabOrder = 54
      Width = 443
    end
    object EdtPedido: TcxTextEdit [45]
      Left = 103
      Top = 500
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      Properties.ReadOnly = True
      Properties.OnChange = OnChanged
      Style.Color = 16505534
      TabOrder = 55
      Width = 52
    end
    object EdtDataFatura: TcxDateEdit [46]
      Left = 226
      Top = 500
      TabStop = False
      Anchors = [akTop, akRight]
      Properties.DateButtons = [btnToday]
      Properties.ImmediatePost = True
      Properties.InputKind = ikStandard
      Properties.ReadOnly = True
      Properties.OnChange = OnChanged
      Properties.OnEditValueChanged = StartDateChanged
      TabOrder = 56
      Width = 124
    end
    object EdtCodFinanceiro: TcxTextEdit [47]
      Left = 356
      Top = 500
      TabStop = False
      Anchors = [akTop, akRight]
      Properties.ReadOnly = True
      Properties.OnChange = OnChanged
      TabOrder = 57
      Width = 44
    end
    object BtnPostAgenda: TcxButton [48]
      Left = 532
      Top = 51
      Width = 22
      Height = 22
      Hint = 'Pendencias'
      Caption = 'O'
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        00000000000217100A2C7C5232BFA76B3FFF754829C1150C073417100A307C52
        32BFA76B3FFF754829C1150C0732000000040000000000000000000000000000
        00000000000489603EC2D5A87CFFF5CC97FFCF9963FF7A4B2BCC89603EC4D5A8
        7CFFF5CC97FFCF9963FF7C4C2CCB000000090000000000000000000000000000
        000000000005B68357F4F0D4B0FFA26638FFF2C893FFA1673DFAB68357F4F0D4
        B0FFA26638FFF2C893FFA3683EFA000000090000000000000000000000000000
        000000000006A37753E0DAB38EFFF3D7B5FFD4A77BFF8F5D39EC8F6947C1DAB3
        8EFFF3D7B5FFD4A77BFF835635C4000000050000000000000000000000000000
        00000000000215100B289F7552DEC08B5DFFCAA17FFF967163FF331F167E8864
        43B5BB8759F9855D3CB9150E09220000000100000000000000070000000A0000
        000B0000000B0000000E0000001750393095E7DBD7FFF1EAE8FF72473AF30C06
        043B000000100000000D0000000D0000000C0000000821533FBE2D7357FF2C72
        56FF2C7155FF2C7055FF36785DFF3E7A61FF6E725FFFE8DDD9FFDACCC7FF7849
        3CFFAC8678FFB18578FFAD8070FFAD7F70FF7C5B50BF2F765AFF68D4B5FF67D4
        B4FF67D3B4FF66D3B3FF66D2B2FF6CD3B5FF6FCFB2FF869D87FFE9DEDAFFB397
        8EFFA98C85FFF2ECE9FFF8F2EEFFF9F2EEFFAE8072FF317A5DFF6DD6B8FF47C6
        9FFF47C69FFF47C69FFF48C69FFF47C69FFF50C8A2FF57C4A3FF7D9B83FFEADF
        DBFF926A5DFFCCBCB6FFF4EDE9FFF9F4F0FFB08374FF337D61FF73D9BDFF4AC8
        A1FF4BC7A1FF4AC7A1FF49C7A1FF4AC7A1FF4AC7A0FF52C9A4FF43826AFFC9B2
        A8FFEBE0DCFF8B6052FFE7DEDBFFF8F4F1FFB18577FF357F63FF79DAC0FF4DC9
        A4FF4DC8A4FF4DC8A3FF4DC8A2FF4CC9A3FF4CC9A3FF4CC9A2FF3E8268FFF3EE
        EBFFCCB6ACFFECE1DDFFA17D73FFF7F2EFFFB3897AFF378367FF7FDEC4FF50CB
        A6FF4FCAA6FF4FCAA6FF4FCAA5FF4FCAA5FF4FCAA5FF4ECAA5FF4FCAA5FFF8F4
        F1FFF4F0EDFFD0BAB1FFB48A7AFFF6F3F0FFB68B7DFF39866AFF84DFC7FF52CC
        A8FF52CCA8FF52CCA8FF52CBA8FF52CCA7FF51CBA7FF52CBA7FF398569FFF9F5
        F2FFF8F5F2FFF7F2EFFFF7F2EFFFFAF7F6FFB88F80FF3A886CFF89E1CBFF55CD
        ABFF55CDAAFF54CEABFF55CDAAFF55CDAAFF54CDA9FF54CDAAFF3B896DFFF9F6
        F3FFFAF5F3FFF9F5F3FFF9F5F3FFFBF9F7FFBA9283FF3C8B6FFF9DE8D5FF9DE8
        D5FF9CE7D4FF9CE8D3FF9BE7D3FF9BE6D4FF99E6D2FF99E7D2FF99E6D2FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC9486FF2D6854BF3D8D70FF3D8C
        70FF3C8C6FFF3C8B6FFF3C8A6EFF3C8A6EFF3B8A6EFF3B896DFF3A886CFFC19A
        8DFFC19A8DFFC0998BFFBF998BFFBF988BFF8E7166C0}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 18
      OnClick = BotoesOutrosClick
    end
    object BtnFinanceiro: TcxButton [49]
      Left = 554
      Top = 51
      Width = 22
      Height = 22
      Hint = 'Financeiro'
      Caption = '$'
      LookAndFeel.Kind = lfStandard
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        00020000000A0000000F00000011000000110000001200000012000000140000
        001804030339261F1BDD2D2520FF0000001A0000000300000000000000000000
        0009896253C1BF8873FFBE8872FFBE8772FFBE856FFFBF8A76FFD5B5A8FFC0A8
        9FFF4E433EFF786E65FF473C36FF97847DC80000000C00000000000000000000
        000DBF8C7AFFF0F8F8FFE4EFF0FFE2EDF0FFE9F1F1FFEDEEECFFD6D2CEFF564F
        48FF887B72FF534B46FFD6CEC9FFD5B4A9FF000000120000000000000000050C
        0E1AB99E91FFD3F0F7FF80B1D4FF71A2CFFFC7E1E6FFC1CCCDFF58524CFF988B
        80FF574F49FFD5CBC5FFF5EDE8FFC18B7AFF0000001300000000050C0E0E0E1F
        2530B9C3C5FF91CFEAFF1763BDFF266BBAFF98C5D2FF585752FFAB9C8FFF5A54
        4FFFD1CDC9FFF2E8E1FFF9F1EDFFC18A77FF000000120413171B0D2C353A1746
        526090C5D4FF216EC3FF38BBEEFF0F59B8FF4A6A76FFBAAC9FFF595854FFBBCD
        D0FFE2E7E6FFF4EDE8FFFAF4EFFFC38E7AFF000000110F5AA4CE0F63C5FF0E5F
        C1FF0E5DBEFF36B9EFFF3FD2FBFF33A5E1FFB5C0C2FF4A6A76FF8EC7D6FFBAE1
        EAFFD9EAECFFEEEEE9FFFAF5F1FFC6927DFF000000100C3749541572CAF938C9
        F7FF3BCFFAFF3BCFFAFF3BCEFAFF3BCFFAFF30A2E0FF0D56B7FF246CBDFF69A5
        D3FFCEE9EDFFEAEEECFFFBF6F3FFC79681FF0000000F0B202628155F8FA6559B
        DDFFAAE8FCFF8AE0FBFF4DD0FAFF37CBF8FF36CBF8FF2DB1EAFF1461BCFF71B2
        DAFFCDEAEFFFEAEFEDFFFCF7F4FFC99886FF0000000F09171B1B1648575C146E
        CCFBD6F0FCFFD8F4FDFFD2F2FDFF89DEFAFF2AAFEAFF1D6CC2FF79C9E9FFB5E5
        F3FFD4EDF1FFECF1F0FFFDF9F7FFCC9B8AFF0000000E061317181351727F4890
        DBFFF4FCFEFFE3F2FBFFEAF9FEFFE4F7FEFF105DBEFF7FD7F2FFACE5F6FFC7EC
        F6FFDEF0F3FFF0F3F1FFFDFAF8FFCEA08FFF0000000D04101314115F97AF88B9
        E8FF448EDAFF1671CFFF639CDCFFE9F4FCFF0E5FC1FF9DE1F5FFC2EBF8FFD6EF
        F6FFE9F2F4FFF7F5F1FFFDFBF9FFD0A493FF0000000C010A0C0D105A94AC1260
        95AD89C0DBFFAFEAFBFF68B8E7FF2F7ED1FF166AC8FFB5E7F6FFD6F0F7FFE5F3
        F6FFF2F5F5FFFCF7F3FFFDFCFAFFD2A897FF0000000B01030404010A0C0D0716
        1A21CEC6C1FFDFF8FFFFCEEFF9FFA7DDF3FF4895D9FFD2EFF7FFE9F4F8FFF2F6
        F6FFFBF7F6FFFCF7F5FFFEFCFCFFD5AA9AFF0000000B00000000000000000000
        0005D6B4A5FFF5FDFFFFF0FBFFFFEAFAFFFFE7FAFDFFF2FBFEFFFAFDFEFFFFFE
        FEFFFEFEFEFFFEFEFEFFFEFEFDFFD7AE9EFF0000000900000000000000000000
        0003A3867AC0DBB5A5FFDAB5A4FFDAB5A4FFDAB4A4FFD9B3A3FFD9B3A3FFD9B3
        A2FFD9B2A2FFD8B2A2FFD8B1A1FFA08277C200000006}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 19
      OnClick = BotoesOutrosClick
    end
    object CbSituacao: TcxLookupComboBox [50]
      Left = 103
      Top = 392
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DSSituacao
      Properties.OnChange = CbSituacaoPropertiesChange
      TabOrder = 47
      Width = 502
    end
    object BtnMenu: TcxButton [51]
      Left = 604
      Top = 51
      Width = 22
      Height = 22
      Caption = 'M'
      LookAndFeel.Kind = lfStandard
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000001000000090000001200000012000000090000
        0002000000000000000000000000000000000000000000000000000000000000
        00030000000A0000000A0000000B2519156F68473BFF67443BFF1D130F700000
        000C0000000B0000000C00000005000000010000000000000000000000030403
        021A543B33C738251EB30D0907454C362DC4B5A198FFAB958AFF3E2923C50D08
        0748311F1AB13A241ECE03020222000000040000000000000000000000085A41
        38C9C7B9B0FFA8958BFF6C4F47FF715044FECABAB0FFC6B5AAFF614237FE6B50
        47FE9C857AFFA89388FF3B241FCB0000000B0000000000000000000000074C39
        30ABC0AEA7FFE3DBD5FFD2C3BAFFC1AFA6FFCFC0B7FFCEBEB5FFBCAA9FFFCAB9
        AEFFC9B8ADFF9F897FFF36221DB20000000A000000000000000100000007110C
        0B368D6F65FCEAE3DFFFDACDC6FFD8CCC3FFE3D9D3FFE7E0DAFFE1D6D0FFD2C3
        B9FFCDBCB3FF705449FE0D0907410000000A00000002000000042A1E1A6B4C37
        2EBB846356FED9CEC8FFE3DAD5FFCDBEB7FF8E6F62FF947567FFD0C0B9FFE3DA
        D3FFC8B7ADFF6A4940FF47312AC22418147100000007000000088D6D60FFD8CC
        C7FFEEE8E5FFEBE6E0FFEAE3DDFF7F6257FF2219155E241B175E937467FFEBE4
        DFFFD6C8C0FFD3C6BDFFB9A59BFF78574BFF0000000D00000007937364FFD9CE
        CAFFF6F3F2FFFAF7F6FFEFEAE5FF76574DFF1D1411551E16135688695DFFEFE9
        E6FFDDD2CBFFD8CAC3FFC7B8B1FF7E5B4FFF0000000C000000033428245F6650
        46B5937467FEECE6E3FFF0ECE8FFCEC2BDFF856961FF886D65FFD2C7C2FFECE4
        DFFFD9CFC9FF856458FD5A443AB92B201C610201010800000000000000031611
        0F2EA78B7EFDF6F4F1FFF3EFECFFF2EEEAFFF3EFECFFF0EBE7FFEFEAE6FFEFEB
        E7FFECE5E0FF83665BFD110C0B39000000060000000100000000000000036853
        49AADCD1CBFFF8F6F3FFF8F5F3FFEBE4E1FFFDFCFBFFF3EEECFFE2D8D3FFFAF9
        F8FFF9F7F5FFC8B9B3FF4E3931B0000000050000000000000000000000027760
        55BDE5DDD8FFDCD0CBFFAC9183FD9E7E6EFDFBF8F8FFF5F1EEFF99796AFDA389
        7EFCD7CBC5FFE0D6D1FF6E564CC2000000050000000000000000000000010605
        040D7C6458BF69544BA51713102B6F594EB2E1D7D2FFE0D6D1FF6D574DB31410
        0E2B614D44A4775E53C705040411000000010000000000000000000000000000
        00000000000100000002000000023B302A5EA68676FFA58375FF3A2F295F0000
        0003000000030000000300000001000000000000000000000000000000000000
        0000000000000000000000000000000000010000000200000003000000010000
        00000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      TabOrder = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnMenuClick
    end
    object BtnInformacoesDeCriacaoAlteracao: TcxButton [52]
      Left = 482
      Top = 51
      Width = 22
      Height = 22
      Hint = 'Informa'#231#245'es de Cria'#231#227'o e Altera'#231#227'o'
      Caption = 'Informa'#231#245'es de Cria'#231#227'o e Altera'#231#227'o'
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        00000000000000000000000000040000000F000000110000000B000000040000
        0001000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000E431B10FF31130BE1190A0598030407420000
        000C000000020000000000000000000000000000000000000000000000010000
        00050000000A0000000D0000001B673B2ADEB8C7D2FF7789A3FF224084FF040F
        34980000001000000002000000000000000000000000000000020000000B1122
        386522416DB3284F86D593AAC9FD837175FF869AB3FFC7E3F6FF1B65B9FF286B
        ABFF0412379A0000001000000002000000000000000000000008274A76B86295
        C5FF9CC0DFFFC7DCEEFFCEEEF9FF9BC4D2FF458BC6FFDDFEFDFF4DB4E6FF1B67
        BAFF2E73B1FF051439980000000D00000002000000000000000B3C72B1FFB9EA
        F9FFD3F0FBFFEBF9FFFFB9EBFAFFB1E3F0FF68A7CFFF439FD5FFDDFEFDFF55C0
        ECFF1D6ABCFF337BB6FF06163B920000000C000000020000000B3F75B3FFB9EA
        F9FFD3F0FBFFEBF9FFFFA4E6FAFF91DEF3FFA7D6EAFF649DCBFF48A5D8FFDDFE
        FDFF5DCBF2FF206EBFFF3883BCFF07193E900000000A0000000A437AB6FFB9EA
        F9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF82CCECFF9CBFE2FF649DCCFF4BAB
        DAFFDDFEFDFF64D5F7FF2474C1FF3C8BC1FF071B418E00000009467EB9FFB9EA
        F9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF5ABCE7FF71A7DCFF9BBDE1FF6AA7
        D3FF4EAFDDFFDDFEFDFF6BDEFBFF287AC5FF15438DFF000000094883BCFFB9EA
        F9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF5ABCE7FF438BD2FF6EA1DAFFA8D1
        EDFF659AC8FF51B2DFFFDDFEFDFF4CA7D7FF0F2B4F88000000084C86C0FFB9EA
        F9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF5ABCE7FF438BD2FF3F84CFFF80C0
        EBFF9BB5D4FF1B456389327FBFFF163A5A8600000005000000074F8BC2FFB9EA
        F9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF5ABCE7FF438BD2FF3F84CFFF58AC
        E6FF6F98C6FF0000000A00000004000000030000000100000006518EC4FFC8EF
        FBFFE9FAFFFFE5F9FFFFDDF7FFFFD6F4FEFFCBF0FCFFABD9F4FF8FC7EDFF76C0
        EDFF437BB7FF00000007000000000000000000000000000000055493C7FFE8FA
        FFFFE5F9FFFFDFF7FFFFD8F4FEFFCFF2FEFFC6EEFEFFBDEBFDFFB3E8FCFFABE5
        FBFF4780BAFF0000000600000000000000000000000000000003406E93BD82B3
        DAFFA2CAE6FFB0D6EDFFBAE1F3FFC8EFFEFFABDAF2FF95CBEAFF82BCE1FF67A2
        D1FF38638EC30000000400000000000000000000000000000001000000031B2F
        3E5330536F913C688CB44579A5D45491C6FF4377A2D4386388B52C4D6B92182A
        3B540000000400000001000000000000000000000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 16
      OnClick = BtnInformacoesDeCriacaoAlteracaoClick
    end
    object BtnFaturamento: TcxButton [53]
      Left = 460
      Top = 51
      Width = 22
      Height = 22
      Hint = 'Faturamento'
      Caption = 'Faturamento'
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        000000000000000000000000000000000000020302043E45316979865FCD92A2
        72F78E9D6FEF6A7553B325291D3E000000000000000000000000000000000000
        00000000000000000000000000000607050A707C57BD97A776FF97A776FF7885
        5ECB525A408A97A776FF96A676FE444B35720000000000000000000000000000
        0000000000000000000000000000535C418D97A776FF92A172F61E2118330505
        040805060409434A347197A776FF96A676FE24271C3C00000000000000000000
        000000000000000000000809060D92A272F797A776FF92A272F76B7754B56C78
        55B7373D2B5D00000000839167DE97A776FF6A7553B300000000000000000000
        00000000000000000000262B1E4197A776FF97A776FF97A776FF92A172F64D55
        3C820708060C1C1F163094A474FA97A776FF8D9C6EEE00000000000000000000
        0000060A0C0D1D313C4030392E5597A776FF97A776FF91A071F5171912260C0D
        09142F34254F909F70F397A776FF97A776FF92A272F700000000030507073F6C
        838C6FBFE7F872C4EEFF3550576C97A776FF97A776FF818F65DA000000005660
        4492454D36757D8A62D397A776FF97A776FF78855ECB01020303538EADB972C4
        EEFF68B2D9E83154666D111D23266E7A56BA97A776FF97A776FF444B3572090A
        071001010102343A295897A776FF97A776FF3E4531692F51626972C4EEFF72C4
        EEFF182A323616262E314678929C2E42445B8B996CEA97A776FF97A776FF7B88
        60CF5760449397A776FF97A776FF6E7956B9020201035B9DBECC72C4EEFF4271
        8993000000002B4A5A603D697F8862A9CDDC30474A616F7A57BB97A776FF97A7
        76FF97A776FF93A273F8525B408B04050307000000006EBEE7F772C4EEFF375F
        737B0000000043738C9644768F996AB6DDED72C3EDFE5089A6B2344E556A323A
        2E57262A1E400809060D0000000000000000000000006AB7DEEE72C4EEFF1E33
        3F4300000000070C0F10080D10115FA4C7D572C4EEFF72C4EEFF72C4EEFF1D32
        3D410000000000000000000000000000000000000000508AA7B372C4EEFF6DBC
        E4F4060B0D0E3B657A8372C4EEFF6EBDE6F672C4EEFF72C4EEFF6EBEE7F7060A
        0C0D00000000000000000000000000000000000000001A2D373B72C3EDFE72C4
        EEFF497D98A303050707111C2325192B343872C4EEFF72C4EEFF3F6C848D0000
        00000000000000000000000000000000000000000000000000003256697071C2
        ECFD72C4EEFF69B5DBEB5694B3C065AED3E272C4EEFF518CAAB6030506060000
        0000000000000000000000000000000000000000000000000000000000001B2F
        393D5089A6B26AB7DEEE6EBDE6F65B9CBDCB2F51626902030404000000000000
        00000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 15
      OnClick = BtnFaturamentoClick
    end
    object BtnAtribuido: TcxButton [54]
      Left = 438
      Top = 51
      Width = 22
      Height = 22
      Hint = 'Atribuido'
      Caption = 'Atribuido'
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00040000000C0000000A0000000400000004000000070000000A0000000B0000
        000D0000000D0000000D0000000C0000000A0000000700000000000000000000
        000B0B5D2FFF042D15AC0002011C32496397113866B70A3972D2093A76DB0A45
        8BFF0A448AFF083873DC07346DD4052B5AB8041F4089000000070000000B0000
        0016126737FF3CA885FF094321D47093ABFF8BB7DFFF4391D9FF2B85D7FF308F
        E4FF308FE4FF2A84D7FF2981D3FF2A7DCAFF0B488EFF13542FBD187541FF1873
        41FF177340FF2AC696FF24B07EFF196940FD74A0ABFFAAD2EDFF6DB6EEFF3F9E
        EBFF3F9EEBFF46A2ECFF56ADEDFF3B89CDFF0C447FDA20824BFF7AE4C9FF39CD
        9EFF37CC9DFF35CB9CFF33CA9BFF35C193FF278056FE518887FD7EBAE3FF51A5
        E2FF50A6E1FF58A6DFFF1A64A9FA0C3864A3020B1329258C53FFB5F2E4FFB5F2
        E4FFB3F2E4FF7DE6CAFF4AD2A8FF78DCC0FF3F9A6CFB133F2C89416E99E03E6C
        9DFF366596FF184F81DB02080E260000000500000002206F45C02B955AFF2994
        59FF299358FF9AECD6FF7DD6B9FF318D5CEC0920134500000019426188DC7DA4
        CDFF588BC1FF1C4070DE00000019000000000000000000000002000000030000
        00072D9B5FFF7ECEADFF257A4CCB040E092000000005020304205379ACF9BDE0
        F5FF8BC2EBFF335C95FD0103052D000000030000000000000000000000000000
        0002309F63FC1D5F3B9A0104020B000000010000000517335FC05C80B0FFCAE8
        F6FF94C6E9FF375D95FF102345AC000000090000000000000000000000000000
        00000000000100000001000000000000000000000006205090F64F7CB1FF517C
        AFFF2C5088FF325D98FF183871F40000000B0000000000000000000000000000
        00000000000000000000000000000000000000000003255A9AE66C9DD0FE5C8C
        C1FF76A5D3FF5385BEFF1C427DF7000000070000000000000000000000000000
        000000000000000000000000000000000000000000010C1F3249255B92C22E6E
        B0E62F72B8FA204E82C80A192D59000000030000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        0003000000030000000300000002000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 14
      OnClick = BtnAtribuidoClick
    end
    object BtnResponsavel: TcxButton [55]
      Left = 416
      Top = 51
      Width = 22
      Height = 22
      Hint = 'Respons'#225'vel'
      Caption = 'Respons'#225'vel'
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000010000
        00050000000B0000000F0000000F0000000C0000000500000001000000000000
        000000000000000000000000000000000000000000000000000200000009041A
        0E520C4826BE0F5D31EC0F5D31EC094222BE03140A540000000A000000020000
        00000000000000000000000000000000000000000000000000080A341D871C7A
        49FF25A773FF26B981FF24B880FF1EA36CFF116A3BFF052813890000000A0000
        00010000000000000000000000000000000000000000061D104D298456FC45CA
        9CFF33C792FF43CE9EFF68DDB9FF65DDB8FF3AC391FF157242FD03150A4E0000
        00040000000000000000000000000000000000000000155E36CA60C39FFF41CF
        9FFF32B581FF21804EFF227E4EFF5AC39DFF6ADFBDFF28AB76FF0E4E2ACB0000
        00160000000D0000000D0000000C0000000A000000071E7945F281E4C6FF4CD5
        A8FF1D7947FF061F115E1C7A46FF13592FFF3BAC7FFF40A279FF1C7646FE7B99
        BCFF0A448AFF083873DC07346DD4052B5AB8041F4089217E4BF18BE6CDFF65E0
        BBFF186C3DFF05190C561F804AFF58B08EFF27694BFF7AA6C2FF8EB9E0FF91C3
        EEFF308FE4FF2A84D7FF2981D3FF2A7DCAFF0B488EFF1E6B40C773CEADFF8EEC
        D4FF48BD94FF1C7345FF23864FFF50DAAEFF41BE92FF237349FF7AADBBFF9ACA
        F0FF67B1EEFF46A2ECFF56ADEDFF3B89CDFF0C447FDA0A2416453F9E6DFCBBF0
        E1FFC0F6EAFF9EF0DAFF84E9CEFF6BE3C0FF57DDB5FF4FD2A8FF278557FF669F
        9CFF73B6E4FF58A6DFFF1A64A9FA0C3864A3020B13290000000215472B7D3CA0
        6AFF95D6BCFFBAEEDEFFCAF8EEFFC7F7EDFF81EBCEFF6CDEBBFF40A273FF699F
        97FF5F84ABFF184F81DB02080E26000000050000000200000000000000020B26
        1743206A42B4288754E52C965CFFCDF9F0FF95E0C7FF358F5FEC6B9298EEBBCF
        E3FF79A1CCFF1C4070DE00000019000000000000000000000000000000000000
        000100000002000000052F9A60FF8DD3B5FF277A4ECA09140F3A9DB3D0FCC5E4
        F6FF8BC2EBFF335C95FD0103052D000000030000000000000000000000000000
        00000000000000000001319E63FF1C5D39980104020E576B8BD26486B4FFCAE8
        F6FF94C6E9FF375D95FF102345AC000000090000000000000000000000000000
        00000000000000000000000000010000000100000006235291F64F7CB1FF517C
        AFFF2C5088FF325D98FF183871F40000000B0000000000000000000000000000
        00000000000000000000000000000000000000000003255A9AE66C9DD0FE5C8C
        C1FF76A5D3FF5385BEFF1C427DF7000000070000000000000000000000000000
        000000000000000000000000000000000000000000010C1F3249255B92C22E6E
        B0E62F72B8FA204E82C80A192D590000000300000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 13
      OnClick = BtnResponsavelClick
    end
    object BtnEquipamentos: TcxButton [56]
      Left = 394
      Top = 51
      Width = 22
      Height = 22
      Hint = 'Equipamentos'
      Caption = 'Equipamentos'
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        00020000000A0000000F000000110000001100000011000000100000000B0000
        00030000000000000000000000000000000000000000000000090000000E0000
        00168A6559C3BF8D7BFFBF8D7BFFC08D7BFFBF8D7BFFC08D7BFF8A6558C50000
        0019000000100000000A0000000200000000000000007B5143C0A76E5BFFA068
        55FFC2917FFFF7F0ECFFF7EFECFFF7F0EBFFF6EFEBFFF6EFEAFFC2917FFF8757
        46FF8B5948FF623F33C20000000A0000000000000000BB7E6BFFECD9CCFFE3CE
        BEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFF8F1EDFFC49583FFE2CC
        BCFFE6D1C1FFB67764FF0000000E0000000000000000BE8571FFF1E5DAFFEBDA
        CFFF794734FF794734FF784734FF784734FF784734FF784734FF784734FFECDA
        CEFFEBDBCFFFBA7C69FF0000000D0000000000000000C28B78FFF5EEE7FFF2E7
        DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7DDFFF2E7DEFFF2E7
        DDFFF2E5DEFFBD836FFF0000000C0000000000000000C7937FFFFAF4F1FFCDBE
        B9FF72564AFF624338FF614036FF604035FF5F3F34FF5E3E33FF414C3AFF315F
        45FF0D482AFF2F5538FF0621137A0001000300000000CC9986FFFDFAFAFF8062
        56FF745043FF744F43FF744E43FF734E42FF6F4D41FF265034FF13764BFF1AAC
        73FF52E1BAFF19AD73FF13764BFF0C4026C901030209BB9080E9F5EBE6FF7D5C
        4DFF946E5EFFFAF6F3FFF0E6E0FFF0E5DFFF7D9D88FF218058FF28CD90FF27CD
        8FFF035A2AFF28CD90FF27CD8FFF22835AFF092F1C8434292444A68172CC8868
        57FF9B7565FFFBF8F6FFF2E8E3FFF1E8E1FF317654FF30C18DFF32D49BFF33D4
        9BFF57C4A0FF42D9A6FF33D49BFF31C18DFF115837DE00000001000000030000
        000CC59685FFFCFAF9FFF3EBE6FFF4EAE5FF1C744CFF55DDB0FF3EDAA6FF3EDA
        A6FF02451DFF60C4A4FF3EDAA6FF56DDB1FF166E46F900000000000000000000
        0008C89B89FFFDFCFBFFF5EDE8FFF4EDE8FF368B64FF8EDEC4FF4BE1B2FF79EC
        CBFF89F0D4FF013C18FF4BE1B2FF8BDDC3FF176B47DE00000000000000000000
        0006CA9E8DFFFEFDFDFFFEFDFCFFFEFCFCFF91C4ADFF51A986FFACF5E0FF1D63
        41FF013413FF267250FFACF5E0FF57AE8BFF0E412B7B00000000000000000000
        000498786BC1CDA291FFCCA18FFFCCA090FFCAA08EFF49946CFF50AF89FFA7E2
        CFFFCAF8ECFFA7E2CFFF50AE89FF176C49C00002010300000000000000000000
        00010000000300000005000000050000000600000006000201090F432D741A78
        52CC219465FC1A7852CC0F432E72000201030000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 12
      OnClick = BtnEquipamentosClick
    end
    object BtnDatasDoAgendamento: TcxButton [57]
      Left = 350
      Top = 51
      Width = 22
      Height = 22
      Hint = 'Datas do Agendamento'
      Caption = 'Datas do Agendamento'
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000040000000A00000010000000130000001500000014000000110000
        000C000000050000000100000000000000000000000000000000000000030000
        000C070404263F271F836E4235CA7A4839DE915644FF774436DE693C30CE3A20
        19870704032B000000100000000400000000000000000000000300000011442C
        2486976253F5BE998EFFD9C5BEFFE0CFCAFFEFE6E3FFDDCAC4FFD3BCB5FFB48B
        7FFF895140F540231B920000001800000005000000010102041455362D9CC5A3
        98FFF2E9E7FFF5EFEDFFBCAEA8FF71574CFF593A2DFF755B4EFFBEAEA7FFEBE2
        DEFFE5D8D3FFB79085FF4E2A21A90101021A000000032F23246BB58D80FFF9F5
        F4FFF7F3F2FFC1B3ADFF826555FFB19A85FFC2AC97FFB09783FF7F6251FFC0B0
        A9FFECE3DFFFECE2DFFFA37467FF28191A750000000A5E4F60E1BCB1ACFFF6F3
        F3FFF8F4F3FF7A5E50FFBEA995FF857162FF3F2A22FF746053FFB8A38FFF8066
        58FFEEE5E2FFECE2DFFFB1A29CFF503F50E40000000D182C4D885C6372FFB2B0
        B0FFF1EEEDFF725242FFDDD1B9FF806D5EFF493229FF493228FFCFC0A9FF7455
        45FFEBE3E1FFABA6A3FF505566FF142A55AA0000000A05080F21395F9DFA697F
        9AFF626160FF55443CFFB2A894FFE4E0C1FF584135FF847466FFA49887FF5848
        3FFF5F5C5CFF4E6586FF2F5191FF050B173C000000040000000312213B685A7F
        B7FFA6C5E3FF7990ABFF444D59FF3E4248FF2B2A25FF3C4148FF3E4856FF627D
        9EFF789DC9FF3C609FFD0B172E63000000060000000000000000000000030F1B
        3159315593ED6F91C1FF9BB9DCFFB0CDE9FFCBE8FCFFA7C7E6FF87AAD3FF5A7E
        B3FF284B8BF10A15295800000006000000010000000000000000000000000000
        00020204071112223E6F1C3765B0213F76D0274C91FC1E3C74D0193362B40F1F
        3D75020408170000000300000000000000000000000000000000000000000000
        0000000000000000000200000003000000040000000500000005000000040000
        0002000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 10
      OnClick = BtnDatasDoAgendamentoClick
    end
    object BtnConclusaoDaTarefa: TcxButton [58]
      Left = 328
      Top = 51
      Width = 22
      Height = 22
      Hint = 'Conclus'#227'o da Tarefa'
      Caption = 'Conclus'#227'o da Tarefa'
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000020000
        00090000000E0000000F0000000F0000000F0000001000000010000000100000
        001100000011000000100000000B00000003000000000000000000000008285B
        8FC0357DC6FF327AC4FF3077C2FF2D75C1FF2B73C0FF2870BEFF266EBDFF256D
        BCFF226BBBFF216AB9FF154B84C20000000A00000000000000000000000C3C82
        CAFF77C2EEFF64B7EAFF61B5EAFF5DB4E9FF5AB2E8FF58B0E7FF54AFE7FF51AC
        E7FF50ABE6FF4DAAE6FF216ABAFF0000000F00000000000000000000000C3F85
        CBFF80C7EFFF3F8BCBFF3C88CBFF3986C8FF3583C7FF3381C6FF307FC4FF2F7F
        C4FF2D7DC3FF50ACE7FF246CBBFF0000000F00000000000000000000000B4288
        CDFF88CBF0FF4490CEFFF3ECEAFFEDE6E4FFEFEAE7FFE6E1DEFFE9E4E1FFECE5
        E1FF3181C5FF55AFE7FF256EBDFF0000000F00000000000000000000000B458B
        D0FF91D0F1FF4A95D1FFF5F1EFFFEFECE9FFA8B7AFFF125838FF668877FFE7E2
        DFFF4D91CDFF59B1E8FF2971BEFF0000000E00000000000000000000000A498E
        D2FF99D4F3FF65A5D8FFF5F3F2FFAEBFB5FF1E825BFF2EE1AAFF15744FFFA2B0
        A7FF8BB5DAFF63B6E9FF2B73C0FF0000000D0000000000000000000000094C92
        D3FFADDDF5FFA3C8E6FFB6C9C0FF258863FF40ECB9FF38ECB7FF2BD19CFF2367
        49FF87ACC6FF95CCEDFF2F76C2FF0000000D0000000000000000000000094E95
        D5FFB8E1F7FF84B2BEFF34906CFF5EF2C9FF71F9D7FF77F7D7FF41EBB9FF23B0
        81FF326D5FFFA7CDE3FF6499D1FF0000000C0000000000000000000000085397
        D7FFBEE4F7FF78AFB3FF4AAA89FF77DBBEFF419E7EFF237956FF6ADFC1FF41E9
        B8FF1D9A6FFF52867FFF92B4D6FF0000000D000000000000000000000007559A
        D9FFC5E8F9FFAFD2ECFFA3C5B7FF52967BFF98B8A9FFC5D1CBFF408D6FFF6DE1
        C3FF48ECBDFF18855CFF5B8891FF00000015000000010000000000000007589D
        DAFFBDE6F9FF84BCE4FFF8F8F8FFF0F0EEFFEEEEECFFEDEBEAFFD1D9D4FF3D89
        6BFF62D0B3FF66EFCCFF1C6F4DFF0000001B0000000200000000000000065B9F
        DCFFC2E7F7FF6AA6D2FFA5A3A1FF7D7976FF645E5DFF696462FFABA8A8FFB2B7
        B3FF3B826DFF359170FF6D95A5FF000000130000000000000000000000055DA1
        DEFFC5E6F5FF767C80FFB3AEACFFD2CDCAFFE5E0DDFFCFC6C1FFB8AFAAFFC1BE
        BDFFA6ABAFFFC3D9E6FF9BBDDEFF0000000A0000000000000000000000034778
        A6C05DA0DBFF918987FF8D8682FF88817FFFD0CCCAFFC8C3C1FF6C6664FF7672
        6FFF837F7DFF5C95CBFF4E7BA6CA000000050000000000000000000000010000
        000300000004000000050000000525232243716C6ACA605B59CA1D1B1B440000
        00060000000600000006000000040000000100000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 9
      OnClick = BtnConclusaoDaTarefaClick
    end
    object BtnProcedimento: TcxButton [59]
      Left = 262
      Top = 51
      Width = 22
      Height = 22
      Hint = 'Procedimento'
      Caption = 'Procedimento'
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        000000000000000000000000000E421C11FF31140CE1190A0698030407420000
        000C000000020000000000000000000000000000000000000000000000000000
        000000000000000000000000000D663C2BDCB9C7D2FF7889A2FF244182FF0510
        33960000000F0000000200000000000000000000000000000002000000090000
        000E0000000F0000001065656576775D52CB879AB2FFC8E3F5FF1F66B6FF2B6B
        A8FF051236950000000E000000020000000000000000000000088C6657C0C38C
        7AFFC38C79FFC28B78FFCFA697FFBAA9A4FF488BC3FFDEFEFDFF51B4E3FF1F68
        B7FF3173AEFF061538940000000D00000002000000000000000CC5917EFFFDFB
        FAFFFCF8F6FFFBF7F5FFFAF7F4FFF5F3F1FF8EB4D1FF479FD2FFDEFEFDFF59BF
        E9FF216BB9FF367BB3FF07173A920000000C000000020000000CC79481FFFEFB
        FAFFF9F0EAFFF8F0EAFFF8EFE9FFF9F2EDFFF3EEEBFF8EB4CEFF4BA5D5FFDEFE
        FDFF61CAEFFF246FBCFF3B83B9FF08193D900000000A0000000BC99786FFFEFC
        FBFFF9F2EDFFE1C8BDFFAC6C56FFF9F0EAFFF9F3EEFFCEADA2FF8AABC6FF4EAA
        D7FFDEFEFDFF68D4F4FF2875BEFF3F8BBEFF091B3F8E0000000ACB9C8BFFFEFD
        FCFFFAF3EFFFB0725BFFFAF3EEFFFAF1ECFFF9F1EBFFF9F3EFFFCEAFA3FF92B8
        D3FF51AEDAFFDEFEFDFF6EDDF8FF2C7BC2FF18448BFF00000009CFA08DFFFEFE
        FDFFF4E8E2FFB3765DFFFBF4F0FFFAF3EFFFFAF3EFFFF9F3EDFFBF8F7DFFF2EB
        E7FF95BBD7FF54B1DCFFDEFEFDFF4FA6D4FF112B4E8800000009D0A393FFFEFE
        FDFFB77A63FFDABAADFFFBF5F1FFFBF5F0FFFBF5F0FFFAF4EFFFD6B3A5FFC08F
        7DFFF9F7F6FF8AA7BFFF357FBCFF173A59860000000500000008D3A897FFFEFE
        FEFFF4EAE6FFB77A64FFFCF6F3FFFCF6F3FFFCF4F2FFFBF5F1FFB07059FFF2E7
        E0FFFCFAF9FFE5CEC5FF00000011000000030000000100000007D3AB9AFFFFFE
        FEFFFCF8F6FFBA7E69FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6F3FFB2735CFFFBF6
        F1FFFDFBF9FFD0A493FF0000000C000000000000000000000006D8AE9DFFFFFF
        FEFFFDF9F7FFE8D3CBFFBB7F6AFFFCF8F6FFFCF7F5FFB67862FFE4CEC5FFFCF7
        F3FFFDFCFAFFD2A897FF0000000B000000000000000000000006D8B0A0FFFFFF
        FFFFFDFAF9FFFDFAF8FFFDFAF8FFFDF9F7FFFCF8F7FFFBF8F6FFFBF7F6FFFCF7
        F5FFFEFCFCFFD5AA9AFF0000000B000000000000000000000005D9B3A3FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFEFEFEFFFFFEFEFFFEFEFEFFFEFE
        FEFFFEFEFDFFD7AE9EFF00000009000000000000000000000003A3867AC0DBB5
        A5FFDAB5A4FFDAB5A4FFDAB4A4FFD9B3A3FFD9B3A3FFD9B3A2FFD9B2A2FFD8B2
        A2FFD8B1A1FFA08277C2000000060000000000000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 6
      OnClick = BtnProcedimentoClick
    end
    object BtnMostraOcultaTodos: TcxButton [60]
      Left = 196
      Top = 51
      Width = 22
      Height = 22
      Hint = 'Expandir / Fechar todos os grupos'
      Caption = '>'
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      PaintStyle = bpsCaption
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 3
      OnClick = BtnMostraOcultaTodosClick
    end
    object EdtProtocolo: TcxTextEdit [61]
      Left = 87
      Top = 51
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      Properties.Alignment.Horz = taLeftJustify
      Properties.ReadOnly = True
      Properties.OnChange = OnChanged
      Style.Color = 16505534
      Style.HotTrack = False
      Style.TextColor = clInactiveCaptionText
      Style.TransparentBorder = True
      StyleDisabled.BorderStyle = ebsNone
      TabOrder = 2
      OnKeyDown = EdtProtocoloKeyDown
      Width = 109
    end
    object BtnDadosDoCliente: TcxButton [62]
      Left = 240
      Top = 51
      Width = 22
      Height = 22
      Hint = 'Dados do Cliente'
      Caption = 'Dados do Cliente'
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        000000000000000000040000000F0000001C000000220000001E000000120000
        0005000000000000000000000000000000000000000000000000000000000000
        0001000000050001011F0B34279C125F47EA156D51FF125D45EB0A3327A40104
        032E000000080000000100000000000000000000000000000000000000000000
        00050105042912523DCD20775AFF2C8463FF2A785AFF358B6CFF1E7557FF1156
        40DF01060537000000070000000000000000000000000000000000000001574A
        46FF1D5B45E3247D5FFF359874FF3AA680FF2E8565FF46AD8AFF349774FF227A
        5CFF17523EE54F423EFF00000002000000000000000000000000000000062638
        2EAB1F7B5CFF389C79FF41B28BFF45BB92FF328C6AFF4FC09BFF40B08AFF389B
        77FF1B7357FF1F3028B30000000A0000000000000000000000000000000B144E
        3AB22C8A6AFF42B28DFF48BF99FF49C29BFF348E6DFF54C6A2FF46BE97FF41B1
        8AFF2A8666FF0F4533BB000000130000000000000000000000000000000E1C6D
        51E33A9F7CFF49BE98FF4FC6A0FF87DBC2FF579C83FF90DDC6FF4DC49FFF46BC
        96FF389E7BFF166349E8000000190000000000000000000000005D4F4AFF227E
        5FFF46B08DFF51C9A2FF7FDAC0FFADEADAFF5A9E86FFB1EADBFF7CD8BCFF4DC4
        9EFF43AF8DFF1B7355FF50433EFF0000000000000000000000000000000C217E
        5EF84BB995FF56CEAAFFA6E8D7FFB1ECDDFF5C9E87FFB6EDDEFF9EE5D1FF53CB
        A5FF4AB994FF1B7457F900000019000000000000000000000000000000091F72
        56E149B793FF5BD3AFFFB2ECDEFFB4EDDFFF5D9F88FFBAEFE2FFA9E9D8FF56CE
        A9FF46B390FF19684EE400000014000000000000000000000000000000062962
        4CD33EA685FF5CD1AFFF7C8C80FF64594FFF5A473EFF61564DFF718579FF57C8
        A7FF3BA180FF215944D90000000D00000000000000000000000000000002515D
        51FF308466FF4C554AFF765F55FFA38979FFAB907FFFA28879FF6E5950FF3D41
        39FF2B7E61FF465348FF00000006000000000000000000000000000000000000
        000533372DB5654E46FF7F685CFF9B8173FFA88D7CFF987F70FF705B53FF5342
        3CFF292E28B90000000D00000001000000000000000000000000000000000000
        00010403031448372FBD765B4FFF866B5EFF866D61FF796156FF624D45FF3D30
        2BD10403031F0000000300000000000000000000000000000000000000000000
        0000000000010403020F47362EA7725649F6715549FF624B41F7372C26AA0403
        0318000000030000000000000000000000000000000000000000000000000000
        000000000000614E45F94A3C34B20B09081F000000070A0807213B312CB24C3F
        3BF90000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 5
      OnClick = BtnDadosDoClienteClick
    end
    object BtnCondicaoDePagamento: TcxButton [63]
      Left = 284
      Top = 51
      Width = 22
      Height = 22
      Hint = 'Condi'#231#227'o de Pagamento'
      Caption = 'Condi'#231#227'o de Pagamento'
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        000000000000000000000000000100000005040F0B2F104531A51A6849EB1B73
        50FF196849EB104530A6030F0A31000000060000000100000000000000000000
        0000000000000000000000000005082117531D7352F5299F75FF31BD8DFF54D9
        B0FF2EBD8BFF279D73FF1B7050F5082017560000000600000000000000000000
        0000000000000000000204100C2C237958F536BF90FF3FD2A2FF5ADCB4FF135C
        3BFF57DBB1FF3AD09DFF30BC8CFF217655F5040F0B2F00000000000000000000
        00000000000000000004164C389F3AAE86FF41D5A5FF3AC597FF15603FFF1560
        3FFF155F3EFF40C599FF38D09DFF31A980FF154A35A100000000000000000000
        0001000000030000000925785AE746CEA3FF47D8AAFF45D6A8FF53DBB0FF63DF
        B9FF176442FF2FA67CFF3DD2A1FF3BC898FF227355E70000000000000003060C
        16281D39669F1B3560972D8968FD55DBB3FF4DDAAEFF4FDBAFFF44AA87FF196B
        47FF2C966EFF45D7A8FF43D6A6FF48D6A8FF298262FA000000020E1B304C3462
        A7F45091CDFF5B859EB0368F71F66BDBBAFF52DDB3FF4ACFA4FF1C704DFF68DC
        B9FF6CE3C1FF52DBB1FF49D8AAFF60D7B2FF287C5EE7070E1726396AADF46AB5
        E3FF8BCEF0FF315387C5236365D863C0A3FF66E3BFFF55DFB6FF1E7551FF1E75
        50FF1E7550FF42C097FF5DDFB9FF5CBC9EFF1C533F9A25426D9A67A6D9FF80D0
        F2FF5E8DC5FF315F9DE040788DAE399677FA7FDAC1FF7CE9CCFF64E3BFFF2079
        54FF62E2BDFF77E7C8FF79D8BDFF338D6DF106110D253D6AABE586CDEFFFBBEA
        FAFF2E58A8FF98CAE9FF8AB3C5CB42838BBB3A9A79FB64C1A4FF86DFC7FF97EF
        D9FF84DFC6FF62C0A2FF379272F40F29204B000000024779BEF99CE0F7FF1B48
        A3FF1A47A2FF1A46A2FF18439AF661A1BFCB478093AD3E8D83D93B977BF43A9C
        79FF348A6BE3235D489D07120E2200000002000000004573B4E5A9DEF4FF9BE1
        F9FF3060B3FF96CCECFF8DD7F5FFA3DEF7FF78B9D5E05B9BB9C55B88A2B02845
        6D9200000004000000020000000100000000000000002F4D77958EBBE4FFADEA
        FAFF5F9AD4FF5286C9FFB0DDF4FF4E82C6FF6BB1E2FF8BD4F3FF7BAFDFFF2C4A
        729600000002000000000000000000000000000000000A1019205184C5F0B2DB
        F2FFB7E9F9FF528ACEFF255AB7FF4D85CBFFA3DDF6FF9FD0EEFF4D7EC0F1090F
        1822000000000000000000000000000000000000000000000001182639475488
        CAF38EBCE6FFB7DFF4FFCAF1FCFFB0DCF4FF87B7E3FF5284C6F3172538480000
        0001000000000000000000000000000000000000000000000000000000010B11
        192035557E974F7FBCE15990D5FF4F7EBBE23556809B0A111920000000010000
        00000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 7
      OnClick = BtnCondicaoDePagamentoClick
    end
    object BtnLembrete: TcxButton [64]
      Left = 306
      Top = 51
      Width = 22
      Height = 22
      Hint = 'Lembrete'
      Caption = 'Lembrete'
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0005070402190000000C00000004000000010000000000000000000000010000
        00040000000C0704021900000005000000000000000000000000000000000000
        000C784426D5532F18A20E0804310000000D00000005000000050000000E0E08
        0432532F18A2784426D50000000D000000000000000000000000000000000000
        000E6F4024C8C39163FF9B5E35FB5B341CAD170D0742170D07425B341BAD9C5E
        35FBC38D5BFF704123C90000000E000000000000000000000000000000000000
        000B5D361FABC99A6EFFE3B77DFFC7925EFFA4683DFFA4693DFFC7925FFFE3B4
        78FFC79565FF5D371FAC0000000C000000000000000000000000000000000000
        00084B2D1A8FC29268FFE4B882FFE3B276FFE5B67CFFE5B77CFFE3B379FFE3B3
        79FFC18D60FF4C2D1B9000000008000000000000000000000000000000000000
        00073A231572BA875EFFE4B983FFE1AF74FFE1B175FFE2B175FFE1B175FFE4B6
        7CFFB98358FF3A23157300000007000000000000000000000000000000020000
        000D613C25A9CC9D6FFFE3B77DFFE2B276FFE2B276FFE1B277FFE2B277FFE4B6
        7EFFC89765FF5C391EAA0000000E0000000200000000000000010000000A4E31
        198FC39466FFEAC490FFEAC490FFECC794FFEDCA9AFFEDCA9AFFECC795FFEBC4
        91FFEAC391FFC39363FF4F311C910000000B0000000200000008432B177DC499
        6FFFF3D8AFFFF2D4A7FFF1D3A6FFF1D3A6FFF1D3A6FFF1D3A6FFF1D3A6FFF1D2
        A6FFF1D3A6FFF2D7ACFFC69A70FF452D1A7F000000093E291B67CAA27EFFE1C3
        A2FFF0D9B9FFFAE8C8FFF8E4C0FFF6DCB4FFF5DAB0FFF5DAB0FFF5DAB0FFF6E0
        BAFFF9E6C6FFEFD9B7FFDFC2A0FFC79E78FF3C2717683124194C58412E827B5B
        41B19F7656DFBE8F68FFDDBD9BFFFAE8C6FFF9E2BCFFF7E0B9FFF9E5C1FFDCBD
        9BFFBD8F69FFA17755E07B5B41B158412F833224194D00000002000000040000
        000500000007090705166B533D95E0C3A0FFFBEAC9FFFAE8C5FFE0C29FFF6A53
        3D95090705160000000800000006000000040000000200000000000000000000
        0000000000000000000107050411B28C69E7F7E6C7FFF7E6C6FFB38C6AE80705
        0411000000010000000000000000000000000000000000000000000000000000
        00000000000000000000000000024A3B2C65DEBE9AFFDEBE9AFF4A3A2C650000
        0003000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000102020108AA8968D2AA8967D3020201080000
        0001000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001392F2349392F2349000000010000
        00000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 8
      OnClick = BtnLembreteClick
    end
    object BtnSetor: TcxButton [65]
      Left = 372
      Top = 51
      Width = 22
      Height = 22
      Hint = 'Setor'
      Caption = 'Setor'
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        000D000000180000000E00000003000000000000000000000001000000040000
        00070000000A0000000B0000000D0000000D0000001000000016000000212717
        13826D4034FF1E110E810000001B0000000D00000004000000040E38297E134F
        37B414593DD212583BDB126441FF105D3DFF0C462DDD444A39EC56483BED8B67
        58FDCABAB2FF5C3529FB3B241BC22A1813930000000D00000006278A63FF3BAA
        82FF2FA377FF2B9E73FF2A9E72FF25986AFF1D825BFF7B6F5DFFD5C6C0FFE2D8
        D4FFE0D5CFFFE1D7D4FFAE978EFF4E2F26D50000001000000004267B5BD555BB
        98FF63CDAAFF41BA8FFF33AE83FF30A97BFF2F9F76FF50896DFFAF9186FFF1EC
        E8FF825747FFE5DCD5FF89665AFF1E130F6C0000000C0000000105110D201D5D
        459F339774F85BC2A1FF43B48CFF3EAF87FF45AA87FF867C6AFEDBCCC7FFE9E0
        DDFFFFFFFFFFDDD1CAFFD6C7C1FF603F34D20000000D00000000000000010000
        0003040D0A212A705BDA3B7289FF336981FF236E57F9576E5AF9767664FFA685
        74FFEDE5E2FFA48273FE706456E13D2B24840000000800000000000000000000
        000000000013345978DB7DA4CDFF588BC1FF285A7BFF379373FF389D79FF558C
        70FFB08C7DFF52856AFF155D43FD010101160000000100000000000000000000
        00020203041F5379ACF9BDE0F5FF8BC2EBFF335D97FF4DA489FF49B58FFF4BB1
        8EFF51AA8EFF308567FF144E39C10101010B0000000000000000000000000000
        000517335FC05C80B0FFCAE8F6FF94C6E9FF375D95FF38657FFF77C3ADFF6DBE
        A4FF276B56D70F2A21670101010D000000020000000000000000000000000000
        0006205090F64F7CB1FF517CAFFF2C5088FF325D98FF1B3D77FF355A90FF3060
        7BF60A0B0B2E0101010700000001000000000000000000000000000000000000
        0003255A9AE66C9DD0FE5C8CC1FF76A5D3FF5385BEFF1F4683FF74B5EBFF4374
        AFFF1621326E0303030A00000000000000000000000000000000000000000000
        00010C1F3249255B92C22E6EB0E62F72B8FA2B5D9BF36990BAFF8BC7F2FF5A8E
        C4FF20385EC20505051100000000000000000000000000000000000000000000
        000000000001000000020000000304040410264F88FA82A5C8FF497AACFF3866
        9DFF1C447AFB0606071600000000000000000000000000000000000000000000
        000000000000000000000000000002020207285795F54577B1FE5F95CFFF4C85
        C5FF24528FFF05080B1A00000000000000000000000000000000000000000000
        00000000000000000000000000000101010211253D61295892D62F68AAF72656
        8DD81328437301010103000000000000000000000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 11
      OnClick = BtnSetorClick
    end
    object BtnContato: TcxButton [66]
      Left = 218
      Top = 51
      Width = 22
      Height = 22
      Hint = 'Contato'
      Caption = 'Contato'
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        00000000000000000000000000000000000000000002000000070000000B0000
        000D00000010000000100000000F0000000E0000000A00000000000000000000
        0000000000000000000000000000000000000000000615513AA51A6446D31864
        46DC1A724EFF166C49FF105438DD0E4C33D6093824AD00000000000000000000
        00000000000000000000000000000000000000000007298D68FA6CCBADFF66C8
        A8FF4DBD98FF30A97BFF28986EFF379F79FF156545FA000000020000000A0000
        00160000001B000000170000000B00000002000000041646337D339672F65DBB
        9CFF71CBB0FF4FB794FF3AA17CFF237B5BF60D3626820000000F261610725834
        24D8693D2AFF4D2C1FD91D110B75000000130000000A4539357B877C73E65586
        74FF3A7086FF346780FF1B503FBC0309072300000005291A136DA38070FFD4C5
        BDFFEDE5E1FFCFBEB7FF907163FF1E120C792C1C166AA48577FFD9D1CDFF6884
        A6FF7DA4CDFF588BC1FF26436AE40000001C00000000734937DEE3D7D1FFCEAE
        9EFFAF7957FFD0B39EFFD7C9C3FF533123E177503FDBEAE3E0FFCEC0B8FF577D
        B0FFBDE0F5FF8BC2EBFF345D96FF01030535000000038E5A47FBF8F6F4FFAE72
        5BFFE7AF66FFB27F5EFFF0EBE8FF704533FF9A6B55FFF6F5F4FF4C6189FF5C80
        B0FFCAE8F6FF94C6E9FF375D95FF0F2346B00000000990604DF8F1E8E4FFD2B0
        A5FFAA6C53FFD4B6A7FFCDC0BAFF6D402EFF80513DFFF2EDEAFF295898FF4F7C
        B1FF517CAFFF2C5088FF325D98FF183871F40000000B583C31A2CAAFA3FFF7F2
        EEFFFDFCFBFFEAE0DAFF9E847AFF744634FF855944FFF0E8E3FF3D73B2FF6C9E
        D1FF5C8CC1FF76A5D3FF5385BEFF1C427DF7000000070805041D9F725DF8E8DB
        D4FFE6D7CEFFCDB7AAFF8B6B5EFF7A4A39FF8B5F4BFFF2E8E3FFBAC7D8FF5D8F
        C6FF4280C2FF3375BCFF234F84CE0A192D5A000000030000000760473BA4D0B7
        ADFFEEE3DFFFD5C1B7FF93766CFF7F513EFF926550FFEFE4DEFFF1E9E6FFDCD1
        CBFFCAB8B0FF8C7971BA0000000700000002000000000000000222191541B893
        83FFF3EBE8FFD9C9C2FFA99389FFA37764FFB48B76FFF0E7E3FFEADED9FFBDA7
        9FFFA67D6CFF2119153900000001000000000000000000000000000000078465
        54C6DDCCC4FFE6DCD8FFC2A99EFFA57D68F9B38E79F8E0D1C9FFE9DFDAFFBCA4
        97FF846555C2000000030000000000000000000000000000000000000002130F
        0D237D6152B7AF8673FA7B6050B9130E0C2814100E20836558B3B68F79F98064
        55B3130F0D1E0000000100000000000000000000000000000000000000000000
        0001000000040000000600000005000000020000000000000001000000010000
        00010000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 4
      OnClick = BtnContatoClick
    end
    object BtnAnexosResponsavel: TcxButton [67]
      Left = 504
      Top = 51
      Width = 22
      Height = 22
      Hint = 'Anexos'
      Anchors = [akTop, akRight]
      LookAndFeel.Kind = lfStandard
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        00000000000000000000323232605F5F5FB87F7F7FF55F5F5FB8323232600000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000032323260646464C23131315F0808080F3131315F646464C23232
        3260000000000000000000000000000000000000000000000000000000000000
        0000000000005F5F5FB83131315F0000000000000000000000003131315F5F5F
        5FB8000000000000000000000000000000000000000000000000000000000000
        0000000000007F7F7FF50808080F0000000000000000000000000808080F7F7F
        7FF5000000000000000000000000000000000000000000000000000000000000
        000000000000848484FF000000003A3A3A70747474E03A3A3A70000000008484
        84FF000000000000000000000000000000000000000000000000000000000000
        000000000000848484FF00000000747474E000000000747474E0000000008484
        84FF000000000000000000000000000000000000000000000000000000000000
        000000000000848484FF00000000848484FF00000000848484FF000000008484
        84FF000000000000000000000000000000000000000000000000000000000000
        000000000000848484FF00000000848484FF00000000848484FF000000008484
        84FF000000000000000000000000000000000000000000000000000000000000
        000000000000848484FF00000000848484FF00000000848484FF000000008484
        84FF000000000000000000000000000000000000000000000000000000000000
        000000000000848484FF00000000848484FF00000000848484FF000000008484
        84FF000000000000000000000000000000000000000000000000000000000000
        000000000000848484FF00000000848484FF00000000848484FF000000008484
        84FF000000000000000000000000000000000000000000000000000000000000
        000000000000848484FF00000000848484FF00000000848484FF000000008484
        84FF000000000000000000000000000000000000000000000000000000000000
        000000000000848484FF000000000000000000000000848484FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000007C7C7CF01010101F000000001010101F7C7C7CF0000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000535353A04A4A4A8F1010101F4A4A4A8F535353A0000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001D1D1D38535353A07C7C7CF0535353A01D1D1D38000000000000
        00000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 17
      OnClick = BtnAnexosResponsavelClick
    end
    object LbSituacao: TcxLabel [68]
      Left = 106
      Top = 165
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clGreen
      Style.IsFontAssigned = True
      Transparent = True
      Height = 17
      Width = 168
    end
    object EdtTelefone: TcxTextEdit [69]
      Left = 313
      Top = 163
      Properties.OnChange = EdtResponsavelPropertiesChange
      TabOrder = 29
      Width = 129
    end
    object EdtCEP: TcxTextEdit [70]
      Left = 476
      Top = 163
      Properties.OnChange = EdtCEPPropertiesChange
      TabOrder = 30
      OnKeyDown = EdtCEPKeyDown
      Width = 129
    end
    object LblCidadeÎCidadesÎUF: TcxLabel [71]
      Left = 583
      Top = 194
      Caption = 'ZZZ'
      ParentShowHint = False
      ShowHint = False
      Style.HotTrack = False
      Transparent = True
    end
    object BtnAnexos: TcxButton [72]
      Left = 576
      Top = 51
      Width = 22
      Height = 22
      Hint = 'Anexos'
      Caption = 'A'
      LookAndFeel.Kind = lfStandard
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000010000
        00040000000B0000000E0000000B000000040000000100000000000000000000
        000000000000000000000000000000000000000000000000000000000006150B
        043D5B2F0FC76A3612E45A2D0EC9150B034E0000001300000006000000000000
        00000000000000000000000000000000000000000000000000041A0E05436B37
        14E0351C097D1A0E04472C17086D793E15FF1F10056600000016000000060000
        0000000000000000000000000000000000000000000000000008673714D32916
        086200000009000000040905021B211106567C4016FF20100666000000130000
        00060000000000000000000000000000000000000000060301167A441AF40402
        011400000001000000030000000900000011211207587D4218FF201106640000
        001200000006000000000000000000000000000000000201000B7D461DF40503
        011500000003050301125F3415C481471BFF301A0A71221207597F4419FF2111
        0763000000120000000600000000000000000000000000000004533014A54226
        1086000000082D190A6084491EFF0F09043583481DFF311B0B70221308578147
        1BFF2112076200000011000000060000000000000000000000010201000A884F
        22FF321C0D67180E06396A3C19CD4B2B129A10090431844A1EFF321C0B6F2314
        085683481DFF2212086100000014000000060000000000000000000000010201
        000A8B5224FF331E0D660000000D894F22FF4D2C13991009042F874D20FF321D
        0C6D23140853844A1EFF22130861000000100000000100000000000000000000
        00010201000A8E5527FF331E0E65140C05318C5225FF4E2E14981009042D8950
        22FF0000000A2415094F864D20FF211308590000000400000000000000000000
        00000000000102010009905829FF35200F65150D062F8D5527FF4F2F15970000
        000900000002000000041D1107417C4820EA0201000A00000000000000000000
        0000000000000000000102010108935B2BFF35211063130C062B8F5829FF2215
        09450000000400000003100A0426865024F50503011000000000000000000000
        000000000000000000000000000100000004955C2EFF00000004160E072C925B
        2CFF352110631D120839523218964D2F168F0000000300000000000000000000
        000000000000000000000000000000000001000000020000000100000001170F
        072B5E3A1DA57A4C24D3472C157F000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000020000000200000002000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 20
      OnClick = BtnAnexosClick
    end
    object PnlOutros: TPanel [73]
      Left = 10000
      Top = 10000
      Width = 400
      Height = 300
      BevelOuter = bvNone
      Color = 14803425
      ParentBackground = False
      TabOrder = 80
      Visible = False
    end
    object PnlFrameAnexos: TPanel [74]
      Left = 10000
      Top = 10000
      Width = 206
      Height = 505
      BevelOuter = bvNone
      Caption = 'Anexos'
      Color = 14803425
      ParentBackground = False
      TabOrder = 78
      Visible = False
    end
    object PnlFinanceiro: TPanel [75]
      Left = 10000
      Top = 10000
      Width = 185
      Height = 248
      BevelOuter = bvNone
      Caption = 'PnlFinanceiro'
      Color = 14803425
      ParentBackground = False
      TabOrder = 76
      Visible = False
    end
    object PnlDadosMod: TPanel [76]
      Left = 10000
      Top = 10000
      Width = 185
      Height = 272
      BevelOuter = bvNone
      Color = 14803425
      ParentBackground = False
      TabOrder = 77
      Visible = False
      object LbCriadoPor: TcxLabel
        Left = 5
        Top = -1
        Caption = 'LbCriadoPor'
        ParentColor = False
        Style.Color = 16378073
        Transparent = True
      end
      object LbModificadoPor: TcxLabel
        Left = 5
        Top = 13
        Caption = 'LbCriadoPor'
        ParentColor = False
        Style.Color = 16378073
        Transparent = True
      end
    end
    object EdtResponsavelÎPessoas: TcxButtonEdit [77]
      Left = 87
      Top = 91
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
      Properties.MaxLength = 0
      Properties.OnChange = EdtCodClientePropertiesChange
      Style.HotTrack = False
      TabOrder = 23
      OnKeyDown = EdtResponsavelÎPessoasKeyDown
      OnKeyPress = EdtResponsavelÎPessoasKeyPress
      Width = 70
    end
    object PnlPostAgenda: TPanel [78]
      Left = 10000
      Top = 10000
      Width = 185
      Height = 250
      BevelOuter = bvNone
      Caption = 'PnlPostAgenda'
      Color = 14803425
      ParentBackground = False
      TabOrder = 79
      Visible = False
    end
    object cxButton1: TcxButton [79]
      Left = 626
      Top = 51
      Width = 17
      Height = 22
      Caption = #9660
      TabOrder = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton1Click
    end
    object PnlFrameHistorico: TPanel [80]
      Left = 10
      Top = 748
      Width = 633
      Height = 20
      BevelOuter = bvNone
      Color = 16505534
      ParentBackground = False
      TabOrder = 70
    end
    inherited dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      AlignHorz = ahClient
      AlignVert = avTop
    end
    inherited pnlInformation: TdxLayoutGroup
      Top = 65339
    end
    inherited pnlCaption: TdxLayoutGroup
      UseIndent = False
      Top = 65380
      Index = 6
    end
    inherited lbSubject: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup9
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Left = 26
      Top = 1
      Index = 1
    end
    inherited dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = nil
      Index = -1
      Special = True
    end
    inherited lbLocation: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      Left = 22
      Top = 26
      Index = 1
    end
    inherited lbLabel: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 165
      Left = 1039
      Top = 20
      Index = 0
    end
    inherited pnlTime: TdxLayoutGroup
      Top = 65426
      Index = 7
    end
    inherited lbStartTime: TdxLayoutItem
      Left = 46
      Top = 7
    end
    inherited lbEndTime: TdxLayoutItem
      Left = 52
      Top = 29
    end
    inherited pnlTaskComplete: TdxLayoutGroup
      Top = 65472
      Index = 8
    end
    inherited lbTaskComplete: TdxLayoutItem
      Left = 24
      Top = 10
    end
    inherited lbTaskStatus: TdxLayoutItem
      Left = 281
      Top = 10
    end
    inherited pnlRecurrenceInfo: TdxLayoutGroup
      Top = 65501
      Index = 9
    end
    inherited lbRecurrence: TdxLayoutItem
      Top = 7
    end
    inherited pnlResource: TdxLayoutGroup
      Top = 65531
      Index = 10
    end
    inherited lbResource: TdxLayoutItem
      Left = 34
      Top = 5
    end
    inherited pnlPlaceHolder: TdxLayoutGroup
      Top = 17
      Index = 11
    end
    inherited lbShowTimeAs: TdxLayoutItem
      Left = 49
      Top = 4
    end
    inherited pnlMessage: TdxLayoutGroup
      CaptionOptions.Text = 'Mensagem'
      Left = 8
      Top = 168
      Index = 12
    end
    inherited dxLayoutItem8: TdxLayoutItem
      Parent = nil
      Enabled = False
      Index = -1
    end
    inherited pnlThreeButtons: TdxLayoutGroup
      Left = 1057
    end
    inherited dxLayoutItem11: TdxLayoutItem
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 66
    end
    inherited dxLayoutItem9: TdxLayoutItem
      ControlOptions.OriginalWidth = 66
    end
    inherited dxLayoutItem10: TdxLayoutItem
      ControlOptions.OriginalWidth = 66
    end
    inherited pnlRecurrence: TdxLayoutItem
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 77
    end
    inherited pnlButtons: TdxLayoutGroup
      Top = 540
    end
    object GrupoCabecalho: TdxLayoutGroup
      Parent = lcMainGroup_Root
      ItemIndex = 14
      LayoutDirection = ldHorizontal
      Locked = True
      Padding.AssignedValues = [lpavLeft, lpavRight, lpavTop]
      ShowBorder = False
      UseIndent = False
      Index = 1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = GrupoCabecalho
      Visible = False
      CaptionOptions.AlignHorz = taRightJustify
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liProtocolo: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahLeft
      Visible = False
      Padding.AssignedValues = [lpavLeft]
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Protocolo:'
      Control = EdtProtocolo
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 109
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item45: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = BtnMostraOcultaTodos
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item58: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = BtnContato
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item47: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = BtnDadosDoCliente
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item57: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = BtnProcedimento
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item49: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = BtnCondicaoDePagamento
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item50: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = BtnLembrete
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Item56: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = BtnConclusaoDaTarefa
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutControl1Item55: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = BtnDatasDoAgendamento
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutControl1Item46: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = BtnSetor
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutControl1Item54: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = BtnEquipamentos
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object dxLayoutControl1Item53: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = BtnResponsavel
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object dxLayoutControl1Item52: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = BtnAtribuido
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object dxLayoutControl1Item51: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = BtnFaturamento
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 14
    end
    object dxLayoutControl1Item48: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = BtnInformacoesDeCriacaoAlteracao
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 15
    end
    object dxLayoutControl1Item59: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = BtnAnexosResponsavel
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 16
    end
    object dxLayoutControl1SeparatorItem2: TdxLayoutSeparatorItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Separator'
      Index = 17
    end
    object dxLayoutControl1Item43: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = BtnPostAgenda
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 18
    end
    object dxLayoutControl1Item44: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = BtnFinanceiro
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 19
    end
    object dxLayoutControl1Item61: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = BtnAnexos
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 20
    end
    object dxLayoutControl1SeparatorItem1: TdxLayoutSeparatorItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Separator'
      Index = 21
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = BtnMenu
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 22
    end
    object GrupoCliente: TdxLayoutGroup
      Parent = pnlCaption
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      Locked = True
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = GrupoCliente
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutEdtSolicitante: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup9
      CaptionOptions.Text = 'Solicitante: '
      Control = EdtSolicitante
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object GrupoDadosCliente: TdxLayoutGroup
      Parent = lcMainGroup_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Dados do Cliente'
      Index = 5
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = GrupoDadosCliente
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item28: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Situa'#231#227'o:'
      Control = LbSituacao
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 168
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item26: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahClient
      CaptionOptions.Text = 'Fone:'
      Control = EdtTelefone
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 129
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahClient
      CaptionOptions.Text = 'CEP:'
      Control = EdtCEP
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 129
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = GrupoDadosCliente
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Cidade:'
      Control = EdtCidadeÎCidades
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = LblCidadeÎCidadesÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 314
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item60: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'Estado:'
      Control = LblCidadeÎCidadesÎUF
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = GrupoDadosCliente
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Endere'#231'o:'
      Control = EdtEndereco
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 362
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'N'#250'mero:'
      Control = EdtNumero
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = GrupoDadosCliente
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Email:'
      Control = EdtEmail
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 459
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = BtnSalvarAlteracoesCliente
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoInformacaes: TdxLayoutGroup
      Parent = pnlCaption
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Informa'#231#245'es'
      ButtonOptions.Visible = False
      ItemIndex = 6
      Index = 1
      Buttons = <
        item
          Glyph.SourceDPI = 96
          Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00F2F2F2FF7B7B7BFFEDEDEDFFFFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00F5F5F5FF8C8C8CFF939393FF7A7A7AFFEEEEEEFFFFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00F7F7F7FFA5A5A5FFA7A7A7FFB0B0B0FF989898FF7E7E7EFFECEC
            ECFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00B9B9B9FFB9B9B9FFBEBEBEFFB8B8B8FFB2B2B2FF9B9B9BFF9696
            96FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00BFBFBFFFB9B9B9FFB2B2B2FFAAAAAAFFA1A1A1FF979797FF9191
            91FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          Hint = 'Expandir / Fechar todos os grupos'
          Visible = False
          Width = 40
          OnClick = GrupoInformacaesButton0Click
        end
        item
          Glyph.SourceDPI = 96
          Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00616161FF818181FFECECECFFFFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00616161FF858585FF7E7E7EFFF1F1F1FFFFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00686868FFA1A1A1FF989898FF969696FFF4F4F4FFFFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00707070FFA8A8A8FFB0B0B0FFAAAAAAFFB1B1B1FFFFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00797979FFAEAEAEFFA7A7A7FFA8A8A8FFF8F8F8FFFFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00838383FFA4A4A4FFA5A5A5FFF7F7F7FFFFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF008D8D8DFFA0A0A0FFF7F7F7FFFFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          Hint = 'Menu de Grupos'
          Visible = False
          OnClick = GrupoInformacaesButton1Click
        end>
    end
    object GrupoProcedimento: TdxLayoutGroup
      Parent = GrupoInformacaes
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Locked = True
      Padding.AssignedValues = [lpavLeft, lpavRight]
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = GrupoProcedimento
      CaptionOptions.Text = 'Procedimento:'
      Control = EdtProcedimentoÎProduto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutAutoCreatedGroup
      Parent = GrupoProcedimento
      AlignHorz = ahClient
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahClient
      Control = EdtProcedimentoÎProdutoÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 313
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Valor R$:'
      Control = EdtProcedimentoÎProdutoÎVALOR
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 73
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoCondicaoPagto: TdxLayoutGroup
      Parent = GrupoInformacaes
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = GrupoCondicaoPagto
      CaptionOptions.Text = 'Cond. de Pagto:'
      Control = EdtCondicaoAgePagtoÎCondicaoPagto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      Parent = GrupoCondicaoPagto
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = LblCondicaoAgePagtoÎCondicaoPagtoÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 281
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item29: TdxLayoutItem
      Parent = GrupoCondicaoPagto
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Mensalidade R$'
      Control = EdtMensalidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 73
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object GrupoAgendaSetor: TdxLayoutGroup
      Parent = GrupoInformacaes
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      Locked = True
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = GrupoAgendaSetor
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      Offsets.Left = 10
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Setor:'
      Control = EdtSetorÎSetor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = LblSetorÎSetorÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 257
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutItemCbPrioridade: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Prioridade:'
      Control = CbPrioridade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 123
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item27: TdxLayoutItem
      Parent = GrupoAgendaSetor
      Offsets.Left = 10
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Situa'#231#227'o:'
      Control = CbSituacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 488
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoEquipamento: TdxLayoutGroup
      Parent = GrupoInformacaes
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      LayoutDirection = ldHorizontal
      Locked = True
      Padding.AssignedValues = [lpavLeft]
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = GrupoEquipamento
      Offsets.Left = 10
      CaptionOptions.Text = 'Equipamento:'
      Control = EdtEquipamentoÎEquipamento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = GrupoEquipamento
      AlignHorz = ahClient
      Control = EdtEquipamentoÎEquipamentoÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 434
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoResponsavel: TdxLayoutGroup
      Parent = GrupoInformacaes
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      LayoutDirection = ldHorizontal
      Locked = True
      Padding.AssignedValues = [lpavLeft]
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = GrupoResponsavel
      Offsets.Left = 10
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Respons'#225'vel:'
      Control = EdtCodResponsavel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = GrupoResponsavel
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taRightJustify
      Control = EdtResponsavel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 266
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = GrupoResponsavel
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Vis'#237'vel para:'
      Control = CBoxVisualiza
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 108
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object GrupoFuncionario: TdxLayoutGroup
      Parent = GrupoInformacaes
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      Locked = True
      ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = GrupoFuncionario
      Offsets.Left = 10
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Funcion'#225'rio:'
      Control = EdtFuncionarioÎPessoas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = GrupoFuncionario
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taRightJustify
      Control = EdtFuncionarioÎPessoasÎRAZAOSOCIAL
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 434
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoPedidos: TdxLayoutGroup
      Parent = GrupoInformacaes
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Ob'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Locked = True
      ShowBorder = False
      UseIndent = False
      Index = 6
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = GrupoPedidos
      Offsets.Left = 10
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Pedido:'
      Control = EdtPedido
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 52
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoFaturamento: TdxLayoutGroup
      Parent = GrupoPedidos
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      Locked = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item36: TdxLayoutItem
      Parent = GrupoFaturamento
      CaptionOptions.Text = 'Faturamento:'
      Control = EdtDataFatura
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 124
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutItemCodFinanceiro: TdxLayoutItem
      Parent = GrupoFaturamento
      Control = EdtCodFinanceiro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 44
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.AlignVert = tavCenter
      CaptionOptions.Layout = clLeft
      CaptionOptions.Text = 'Outros'
      Visible = False
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      OnCollapsing = dxLayoutControl1Group13Collapsing
      OnExpanding = dxLayoutControl1Group13Expanding
      Index = -1
    end
    object LayoutItemOutros: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.Text = 'Panel2'
      CaptionOptions.Visible = False
      Control = PnlOutros
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 300
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = GrupoCliente
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 1
    end
    object GrupoMensagem: TdxLayoutGroup
      Parent = GrupoCliente
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 2
    end
    object LayoutItemMensagem: TdxLayoutItem
      Parent = GrupoMensagem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Index = 0
    end
    object GrupoFrameAnexos: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Visible = False
      ShowBorder = False
      Index = -1
    end
    object LayoutItemFrameAnexos: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Panel2'
      CaptionOptions.Visible = False
      Control = PnlFrameAnexos
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 505
      ControlOptions.OriginalWidth = 206
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object liFinanceiro: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = PnlFinanceiro
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 248
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object liPnlDadosMod: TdxLayoutItem
      CaptionOptions.Visible = False
      Control = PnlDadosMod
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 272
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup9
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Assunto:'
      Control = EdtResponsavelÎPessoas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      CaptionOptions.Visible = False
      Control = PnlPostAgenda
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 250
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 23
    end
    object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
      Parent = lcMainGroup_Root
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lcMainGroup_Root
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 4
    end
    object dxLayoutSeparatorItem7: TdxLayoutSeparatorItem
      Parent = lcMainGroup_Root
      AlignHorz = ahRight
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 448
      CaptionOptions.Text = 'Separator'
      Index = 2
    end
    object LiPnlFrameHistorico: TdxLayoutItem
      Parent = pnlMessage
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = PnlFrameHistorico
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 413
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object BtnConsultar: TcxButton [5]
    Left = 11593
    Top = 19
    Width = 25
    Height = 21
    Anchors = [akTop, akRight]
    Caption = '- F1'
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D360400000000000036000000280000001000000010000000010020000000
      000000000000C40E0000C40E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B0A090FF604830FF604830FF604830FF604830FF604830FF6048
      30FF604830FF604830FF604830FF604830FF0000000000000000000000000000
      000000000000B0A090FFFFF8FFFFD0C8C0FFC0C0C0FFC0B8B0FFC0B0A0FFC0A8
      A0FFC0A890FFC0A090FFC0A090FF604830FF0000000000000000000000000000
      000000000000B0A090FFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FFF0E8E0FFF0E0
      D0FFE0D8D0FFE0D0C0FFC0A090FF604830FF0000000000000000B6C3C3FF6F80
      90FF00000000C0B0A0FFFFFFFFFFD0B8B0FFD0B0B0FF3060F0FF4068F0FF3058
      F0FF3058F0FFB09890FFC0A090FF604830FF0000000000000000AAB6C3FF10B8
      F0FF2080B0FFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0FFF0F0F0FFF0E8
      E0FFF0E0E0FFF0D8D0FFC0A8A0FF604830FF0000000000000000BFD4DBFFA0F0
      FFFF90E8FFFF3080A0FFE0E8F0FF5078F0FF4068F0FF5070F0FF4068F0FFB098
      A0FFC09890FFC09890FFC0A8A0FF604830FF000000000000000000000000A6C7
      D3FFE0FFFFFF80E8FFFF207090FFE0E0E0FFFFFFFFFFFFFFFFFFFFF8FFFFFFF8
      F0FFF0F0F0FFF0E8E0FFC0B0A0FF604830FF0000000000000000000000000000
      00009CC0D5FFE0FFFFFF70E0FFFF206890FFC0C8D0FFD0C8C0FFD0B0A0FFC0A8
      A0FF4068F0FF4068F0FFC0B8B0FF604830FF00000000000000007C96A3FF7A8C
      9EFF626F7CFF707880FFD0FFFFFF50D8FFFF305070FFE0E0E0FFFFFFFFFFFFFF
      FFFFFFF8F0FFFFF0F0FFC0B8B0FF604830FF000000000000000096D1E5FFC0F8
      FFFFD0FFFFFFC0FFFFFFB0F8FFFF80E8FFFF70E0FFFF304860FF4068F0FFFFFF
      FFFFFFFFFFFFD0C8C0FFC0C0C0FF604830FF0000000000000000D6EDF4FFA0D8
      E0FFE0FFFFFFC0FFFFFF40D0FFFF5090A0FFE0D8E0FFFFFFFFFFFFFFFFFFFFFF
      FFFFB0A090FF604830FF604830FF604830FF000000000000000000000000A3D1
      E5FFC0F8FFFFD0FFFFFFB0F8FFFF20C8FFFF507890FFD0D0E0FF4068F0FFFFFF
      FFFFC0A890FFD0C8C0FF604830FFE3D1C8FF0000000000000000000000000000
      000096D2E1FFE0FFFFFFC0FFFFFF80E8FFFF20C8FFFF506870FFE0E0E0FFFFFF
      FFFFC0B0A0FF604830FFE3D1C8FF000000000000000000000000000000000000
      0000AAD5E7FFC0F0F0FFD0FFFFFFC0FFFFFF60E0FFFF50B8E0FF505060FFE0D8
      D0FFD0B8B0FFE3D1C8FF00000000000000000000000000000000000000000000
      000000000000A3D8E5FF90D0E0FF90D0E0FF80C8E0FF80B0D0FF6090A0FF7A85
      90FF0000000000000000000000000000000000000000}
    PaintStyle = bpsGlyph
    SpeedButtonOptions.Flat = True
    SpeedButtonOptions.Transparent = True
    TabOrder = 1
    Visible = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = BtnConsultarClick
  end
  object btnFechar: TcxButton [6]
    Left = 10456
    Top = 59
    Width = 130
    Height = 30
    Anchors = [akTop, akRight]
    Caption = 'Fechar'
    ModalResult = 11
    TabOrder = 3
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object Produto: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select CODIGO, DESCRICAO, VALOR'
      'from PRODUTO'
      'where (ATIVO = '#39'S'#39')'
      '      and (DESCRICAO like :desc)'
      '  '
      '  '
      '  '
      ' '
      ' '
      ' '
      '  ')
    Left = 375
    Top = 180
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Desc'
        ParamType = ptUnknown
      end>
    object ProdutoCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PRODUTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object ProdutoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTO"."DESCRICAO"'
      Size = 150
    end
    object ProdutoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"PRODUTO"."VALOR"'
    end
  end
  object SPCad: TIBStoredProc
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    Left = 375
    Top = 152
  end
  object DSProduto: TDataSource
    DataSet = Produto
    Left = 403
    Top = 180
  end
  object DSEquipamento: TDataSource
    DataSet = Equipamento
    Left = 403
    Top = 208
  end
  object Equipamento: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *'
      'from EQUIPAMENTO'
      'where (CODIGO = :Codigo)'
      ''
      ''
      ''
      '  '
      '  '
      '  '
      ' '
      ' '
      ' '
      '  ')
    Left = 375
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
  end
  object UCControls1: TUCControls
    GroupName = 'Editor de Agenda'
    UserControl = FrmPrincipal.UserControl
    Components = ''
    MostraMessagemErroValidacao = False
    Left = 515
    Top = 180
  end
  object Financeiro: TIBDataSet
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FINANCEIRO'
      'where'
      '  CODEMPRESA = :OLD_CODEMPRESA and'
      '  CODIGO = :OLD_CODIGO and'
      '  CODPEDIDO = :OLD_CODPEDIDO')
    InsertSQL.Strings = (
      'insert into FINANCEIRO'
      
        '  (AGRUPADOR, BOLETO_NOSSO_NR, CHEQUE_NUMERO, CODCONDICAOPAGTO, ' +
        'CODCONTA, '
      
        '   CODEMPRESA, CODFINANCEIRO_GRUPO, CODIGO, CODNF_ENTRADA, CODPE' +
        'DIDO, CODPLANOCONTAS, '
      
        '   CODTIPOPAGTO, CODUSUARIO, COMISSAO_PAGA, CONDICAOPAGTO, CONTA' +
        'TOS, COR, '
      
        '   CREDITO, DATAPAGTO, DESCONTO, DOCUMENTO, DT_ALTERACAO, DT_EXC' +
        'LUSAO, '
      
        '   DT_NOTAFISCAL, EMISSAO, HISTORICO, IMPRESSO, JUROS, MOTIVO_EX' +
        'CLUSAO, '
      
        '   NOTAFISCAL, PARCELA, PESSOA_RESPONSAVEL_CODIGO, PESSOA_RESPON' +
        'SAVEL_SEQUENCIA, '
      
        '   PESSOA_RESPONSAVEL_TIPO, RAZAOSOCIAL, RECIBO_IMPRESSO, STATUS' +
        ', TIPO, '
      '   TIPOPAGTO, VALOR, VENCTO)'
      'values'
      
        '  (:AGRUPADOR, :BOLETO_NOSSO_NR, :CHEQUE_NUMERO, :CODCONDICAOPAG' +
        'TO, :CODCONTA, '
      
        '   :CODEMPRESA, :CODFINANCEIRO_GRUPO, :CODIGO, :CODNF_ENTRADA, :' +
        'CODPEDIDO, '
      
        '   :CODPLANOCONTAS, :CODTIPOPAGTO, :CODUSUARIO, :COMISSAO_PAGA, ' +
        ':CONDICAOPAGTO, '
      
        '   :CONTATOS, :COR, :CREDITO, :DATAPAGTO, :DESCONTO, :DOCUMENTO,' +
        ' :DT_ALTERACAO, '
      
        '   :DT_EXCLUSAO, :DT_NOTAFISCAL, :EMISSAO, :HISTORICO, :IMPRESSO' +
        ', :JUROS, '
      
        '   :MOTIVO_EXCLUSAO, :NOTAFISCAL, :PARCELA, :PESSOA_RESPONSAVEL_' +
        'CODIGO, '
      
        '   :PESSOA_RESPONSAVEL_SEQUENCIA, :PESSOA_RESPONSAVEL_TIPO, :RAZ' +
        'AOSOCIAL, '
      
        '   :RECIBO_IMPRESSO, :STATUS, :TIPO, :TIPOPAGTO, :VALOR, :VENCTO' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  CODPEDIDO,'
      '  CODEMPRESA,'
      '  RAZAOSOCIAL,'
      '  DOCUMENTO,'
      '  NOTAFISCAL,'
      '  HISTORICO,'
      '  EMISSAO,'
      '  VENCTO,'
      '  DATAPAGTO,'
      '  VALOR,'
      '  JUROS,'
      '  DESCONTO,'
      '  CODPLANOCONTAS,'
      '  CODTIPOPAGTO,'
      '  TIPOPAGTO,'
      '  CODCONDICAOPAGTO,'
      '  CONDICAOPAGTO,'
      '  CONTATOS,'
      '  PARCELA,'
      '  CODUSUARIO,'
      '  TIPO,'
      '  STATUS,'
      '  CHEQUE_NUMERO,'
      '  BOLETO_NOSSO_NR,'
      '  CODNF_ENTRADA,'
      '  DT_NOTAFISCAL,'
      '  CODFINANCEIRO_GRUPO,'
      '  DT_EXCLUSAO,'
      '  MOTIVO_EXCLUSAO,'
      '  COR,'
      '  IMPRESSO,'
      '  COMISSAO_PAGA,'
      '  RECIBO_IMPRESSO,'
      '  DT_ALTERACAO,'
      '  CODCONTA,'
      '  AGRUPADOR,'
      '  PESSOA_RESPONSAVEL_CODIGO,'
      '  PESSOA_RESPONSAVEL_TIPO,'
      '  PESSOA_RESPONSAVEL_SEQUENCIA,'
      '  CREDITO'
      'from FINANCEIRO '
      'where'
      '  CODEMPRESA = :CODEMPRESA and'
      '  CODIGO = :CODIGO and'
      '  CODPEDIDO = :CODPEDIDO')
    SelectSQL.Strings = (
      'select *'
      'from FINANCEIRO'
      'where (CODPEDIDO = :CODIGO)'
      'order by CODIGO')
    ModifySQL.Strings = (
      'update FINANCEIRO'
      'set'
      '  AGRUPADOR = :AGRUPADOR,'
      '  BOLETO_NOSSO_NR = :BOLETO_NOSSO_NR,'
      '  CHEQUE_NUMERO = :CHEQUE_NUMERO,'
      '  CODCONDICAOPAGTO = :CODCONDICAOPAGTO,'
      '  CODCONTA = :CODCONTA,'
      '  CODEMPRESA = :CODEMPRESA,'
      '  CODFINANCEIRO_GRUPO = :CODFINANCEIRO_GRUPO,'
      '  CODIGO = :CODIGO,'
      '  CODNF_ENTRADA = :CODNF_ENTRADA,'
      '  CODPEDIDO = :CODPEDIDO,'
      '  CODPLANOCONTAS = :CODPLANOCONTAS,'
      '  CODTIPOPAGTO = :CODTIPOPAGTO,'
      '  CODUSUARIO = :CODUSUARIO,'
      '  COMISSAO_PAGA = :COMISSAO_PAGA,'
      '  CONDICAOPAGTO = :CONDICAOPAGTO,'
      '  CONTATOS = :CONTATOS,'
      '  COR = :COR,'
      '  CREDITO = :CREDITO,'
      '  DATAPAGTO = :DATAPAGTO,'
      '  DESCONTO = :DESCONTO,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  DT_ALTERACAO = :DT_ALTERACAO,'
      '  DT_EXCLUSAO = :DT_EXCLUSAO,'
      '  DT_NOTAFISCAL = :DT_NOTAFISCAL,'
      '  EMISSAO = :EMISSAO,'
      '  HISTORICO = :HISTORICO,'
      '  IMPRESSO = :IMPRESSO,'
      '  JUROS = :JUROS,'
      '  MOTIVO_EXCLUSAO = :MOTIVO_EXCLUSAO,'
      '  NOTAFISCAL = :NOTAFISCAL,'
      '  PARCELA = :PARCELA,'
      '  PESSOA_RESPONSAVEL_CODIGO = :PESSOA_RESPONSAVEL_CODIGO,'
      '  PESSOA_RESPONSAVEL_SEQUENCIA = :PESSOA_RESPONSAVEL_SEQUENCIA,'
      '  PESSOA_RESPONSAVEL_TIPO = :PESSOA_RESPONSAVEL_TIPO,'
      '  RAZAOSOCIAL = :RAZAOSOCIAL,'
      '  RECIBO_IMPRESSO = :RECIBO_IMPRESSO,'
      '  STATUS = :STATUS,'
      '  TIPO = :TIPO,'
      '  TIPOPAGTO = :TIPOPAGTO,'
      '  VALOR = :VALOR,'
      '  VENCTO = :VENCTO'
      'where'
      '  CODEMPRESA = :OLD_CODEMPRESA and'
      '  CODIGO = :OLD_CODIGO and'
      '  CODPEDIDO = :OLD_CODPEDIDO')
    ParamCheck = True
    UniDirectional = False
    Left = 403
    Top = 124
  end
  object Transa: TIBTransaction
    DefaultDatabase = FrmPrincipal.CONECTAR
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 431
    Top = 124
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    Left = 305
    Top = 266
    Bitmap = {
      494C010109000D00040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B9BEC0FF959C9FFF959C9FFF959C
      9FFF959C9FFF959C9FFF959C9FFF959C9FFF959C9FFF959C9FFF959C9FFF959C
      9FFF959C9FFF959C9FFF959C9FFFB9BEC0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000959C9FFFE4E4E4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF959C9FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000959C9FFFD8DCDEFF937458FF785D
      3FFF785D3FFF785D3FFF785D3FFF785D3FFF785D3FFF785D3FFFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFFFFFFFFF959C9FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000959C9FFFCDD1D3FFAE9074FF8368
      4AFF83684AFF83684AFF83684AFF83684AFF83684AFF785D3FFFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFFFFFFFFF959C9FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000959C9FFFCDD1D3FFAE9074FF8368
      4AFF83684AFF83684AFF83684AFF83684AFF83684AFF785D3FFFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFFFFFFFFF959C9FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000959C9FFFCDD1D3FFAE9074FF8368
      4AFF83684AFF83684AFF83684AFF83684AFF83684AFF785D3FFFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFFFFFFFFF959C9FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000959C9FFFCDD1D3FFAE9074FFAE90
      74FFAE9074FFAE9074FFAE9074FFAE9074FFAE9074FF937458FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFFFFFFFFF959C9FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000959C9FFFBFC5C9FFCDD1D3FFCDD1
      D3FFCDD1D3FFCDD1D3FFCDD1D3FFCDD1D3FFCDD1D3FFCDD1D3FFCDD1D3FFCDD1
      D3FFCDD1D3FFCDD1D3FFE4E4E4FF959C9FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D3D5D7FF959C9FFF959C9FFF959C
      9FFF959C9FFF959C9FFF959C9FFF959C9FFF959C9FFF959C9FFF959C9FFF959C
      9FFF959C9FFF959C9FFF959C9FFFB9BEC0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFB0B0B0FFA4A4
      A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF47904EFF4290
      49FF327937FF8F9F91FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000EAD8CAFFD1A989FFC38661FFB4673AFFB4673AFFC38661FFD1A489FFEAD6
      CAFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000200000010000000230000002E00000035000000370000
      0032000000280000001900000007000000010000000000000000000000000000
      000000000000080808081A1A1A1A2B2B2B2B323232392E2E2E48606060837272
      72951F1F1F49010101160000000000000000FFFFFFFFFFFFFFFFB8B8B8FFDBDB
      DBFFB8B8B7FFBDAC96FF9C815FFF84633AFF84633AFF9C815FFF4A944FFF77CA
      81FF5FB167FF327A37FFCAD9CBFFFFFFFFFF000000000000000000000000D1A9
      89FFB46F3AFFC0773FFFC0804FFFD0804FFFC0804FFFC0773FFFC06F3FFFB467
      3AFFD1A489FF000000000000000000000000000000020000000D000000120000
      001300000014000000391A4862D464BCDDFFA8DEF0FFA1E4F9FF62D2F6FF43AF
      D7FF3A99BEFF4589A7F40611188E0000000C0000000000000000000000000D0D
      0D0F363636486E6E6E8B9B9B9BAFA8A8A8C4B4B4B4D3A0A0A0CCCCCBCAFBE1E1
      DFFF54535381191919322020203100000000FFFFFFFFFFFFFFFFFFFFFFFFD3D3
      D3FFC3C0BEFF9C6A3AFFA66B34FFAE6E36FFAE6E36FFA66B34FF509B51FF7ECE
      89FF7DCF88FF61B269FF37813DFFD3E2D4FF0000000000000000CC9F7BFFC080
      4FFFD0885FFFD0885FFFD0884FFFD0884FFFD0804FFFD0804FFFC0804FFFC077
      4FFFC06F3FFFCC9A7BFF00000000000000000000000D233D2DBA25412EC22541
      2EC225412EC228647AF453CCF5FF7EE1FEFFBFEFFDFFBCEFFEFF8EE1FBFF61C5
      E6FF46ABCEFF79D2EEFF46ADD4FF0F1B147B0000000001010101000000000A0A
      0A207E7C7AC6B5B4B4FF999999FFDCDCDCFFF3F4F2FFE2E2E1FFD7D6D4FFD8D7
      D6FFD3D2D0FAC5C4C4E9C7C5C3EC2323232FFFFFFFFFFFFFFFFFD1C1AEFFA78D
      6EFFAF7743FFBB8C5DFFC29370FFC49173FFC38F70FFBF906BFF58A65BFF86D2
      90FF6DCA79FF82D18BFF63B46CFF3A8441FF00000000D1A992FFC0804FFFD090
      5FFFD0905FFFD0885FFFD0885FFFF0E8E0FFF0E8E0FFD0804FFFD0804FFFC080
      4FFFC0774FFFC06F3FFFD1A489FF00000000000000088ACFA5FF81CF9EFF81CE
      9EFF80CE9EFF4A92A1FF90CBE3FF4799BFFF74C3E0FFB0E0F1FF93E1FAFF57D1
      F8FF41AED4FF3C9EC3FF4D9ABDFF1C362FAC0000000000000000000000000000
      00000D0D0D253030305B2626269DA7A7A6FEF7F7F6FFE8E8E7FFDCDBDAFFD7D6
      D5FFE0DFDDFFE7E6E4FFC7C5C4EC1414141DFFFFFFFFEAE1D7FFA7855AFFB37C
      45FFC29970FFD8AA89FFEFDFCFFFFAF6F3FFFAF5F3FFEFDFD1FF60B164FF8CD5
      97FF75CF83FF88D492FF6ABA73FF3C8B43FFEADACEFFB46F49FFD0905FFFD090
      5FFFD0905FFFD0905FFFD0885FFFF0F8F0FFF0F8F0FFD0804FFFD0804FFFD080
      4FFFC0804FFFC0774FFFB4673AFFEAD6CAFF0000000091D2A8FF7DC297FF6EA8
      85FF6EA885FF73BEA4FF378DB0FF58CFF8FF8FE1FAFFC6F1FEFFB1ECFEFF84DF
      FCFF5FC1E0FF49B5D7FF91E5FCFF3A96BBFC00000000313333435657575D5354
      565B4B4D4F53414344493C3C3C75B6B5B4FBE8E7E6FFEFEEEDFFDDDCDBFED7D6
      D6FEE6E5E5FFE1E0DFFFD4D3D1F94847475CFFFFFFFFD0BAA0FFB08049FFC69B
      6EFFD9AA88FFFFFEEBFFFFFAEEFFFFFDF2FFFFFEF2FFFFFCEFFF69BF72FF92D9
      9EFF92D99DFF76C581FF58AA60FFD8E9D9FFD1AD92FFD0804FFFD0985FFFD090
      5FFFD0905FFFD0905FFFD0905FFFD0885FFFD0885FFFD0884FFFD0884FFFD080
      4FFFD0804FFFC0804FFFC06F3FFFD1A489FF0000000096D6AFFF84C89FFF6EA8
      85FF77B58FFF89D0A7FF2E7BA5FF64BCDDFFA8DEF0FFA1E4F9FF62D2F6FF43AF
      D7FF3A99BEFF53A0C4FF75ACC7FF5AA3BDFD00000000999999C2FFFEFAFFF8F3
      EDFFF6F1EAFFEAE7E2FFDADCDCFFD9D8D7FFD6D5D4FFDBDAD9FFD9D9D8FFD8D8
      D7FFD9D8D7FFD7D7D6FFD8D7D5FFDFDEDDFFFFFFFFFFC19E74FFBF8F57FFCDA3
      81FFF0DBC1FFFFF7E6FFFAF2E3FFC5C0B6FFF1EDDEFFFFFCE8FF6DC576FF97DC
      A3FF81CE8DFF63B96DFFA9A06FFFFFFFFFFFC3926DFFD0905FFFD0985FFFD090
      5FFFD0905FFFD0905FFFD0905FFFF0E8E0FFF0D0C0FFD0885FFFD0884FFFD080
      4FFFD0804FFFD0804FFFC0773FFFC38661FF000000009BD8B3FF84C49DFF87C8
      A0FF92D6ADFF3D8399FF53CCF5FF7EE1FEFFBFEFFDFFBCEFFEFF8EE1FBFF61C5
      E6FF46ABCEFF79D2EEFF46ADD4FF509999FF000000008E8F8FBAAD8466FF935B
      30FF9D683EFFA57851FFC8B9AAFFD8D7D6FFD5D4D4FFDADADAFFCCBCAEFFC7B2
      9EFFDEDBD9FFDBDCDBFFDDDDDBFFBABABADBFFFFFFFFBC8F59FFC99C65FFCF9F
      80FFFAF3E2FFFDF6E9FFF2F0E3FF8D8C84FF817E76FFD2CFC2FF71CA7BFF65C3
      70FF61BE6CFFB2A265FFBC8F59FFFFFFFFFFB47649FFD0985FFFD0986FFFD098
      5FFFD0905FFFD0905FFFD0905FFFF0F0F0FFF0F8F0FFE0A880FFD0885FFFD088
      4FFFD0804FFFD0804FFFC0804FFFB4673AFF00000000A1D9B7FF8AC8A3FF98D6
      B0FF9BDCB4FF45899CFF9FDEF3FF83D3EEFF70CCEAFF6FCBE9FF6ECAE8FF6CC9
      E7FF71C9E7FF8AD2E9FF85C7E0FF2D553BC9000000008C8C8CB9986D50FFA06F
      4BFF8A4E1EFF824410FF884B17FFBFB0A1FFDDDFE0FFE1E0E0FFD4D0CBFFDDD7
      D1FFF2F2F1FFF1F0F0FFEAEAE9FF3B3B3B58FFFFFFFFC6985FFFCEA670FFD1A5
      89FFFAF6E9FFFDF8EEFFFFFFF9FF818078FFB1AEA4FF817E76FFC9C6BAFFDBE7
      BFFFC99671FFCEA670FFC6985FFFFFFFFFFFB47649FFD0985FFFE0986FFFD098
      6FFFD0985FFFD0905FFFD0905FFFE0A080FFF0F8F0FFF0F8F0FFE0B8A0FFD088
      5FFFD0884FFFD0884FFFD0804FFFB4673AFF00000000A8DEBDFF90CCA8FF70AB
      87FF9EDCB6FF8ECFBBFF52ACD6FF65C1DFFF64C0DEFF62BFDDFF61BDDCFF60BC
      DBFF5FBBD9FF5CB7D7FF5AAAC3FF254531AA000000008C8C8BB99D775DFFF1E8
      E1FFA97E58FF80430DFF864C1BFFC0B2A5FFE0E5E8FFDCDEDEFFDEDFDEFFEAEB
      EBFFF4F6F6FFFBFDFDFFF3F3F3FF4141415CFFFFFFFFD9B284FFD3AC74FFD9B7
      98FFF1E3D6FFFEFBF5FFF5F5F3FF9F9E95FFF0F0E9FFF8F8F2FFBEB9ADFFF0DA
      C2FFD2AA87FFD3AC74FFD9B284FFFFFFFFFFCF926DFFD0905FFFE0986FFFE098
      6FFFD0986FFFD0985FFFD0905FFFD0905FFFD0905FFFF0E8E0FFF0F8F0FFE0A8
      80FFD0885FFFD0884FFFC0804FFFC38661FF00000000AEE1C2FF92CAA8FF6EA8
      85FF71AA87FFA7E0BEFFA4DCBAFF9DD9BFFF89C9C2FF80C2C2FF79BFC6FF76B9
      B4FF64A493FF6EA885FFA6DEBCFF254731AA000000008C8C8CB99D724AFFA87D
      55FF976635FF894F16FF8B511BFFB1977DFFC8BAADFFC7B7A9FFE4E4E4FFF2F4
      F6FFD6CFCAFFC2B8B2FFDFDFDDFF4343435DFFFFFFFFD6CAB3FFD3AD76FFDFC4
      9AFFDEBDAAFFFFFFFFFFF0F0EEFFE7E5DAFFFFFFF7FFFFFFF7FFFFFEF3FFDCB4
      98FFDBC096FFC2AA7DFFE1CDB1FFFFFFFFFFDAAD92FFD0885FFFE0986FFFE098
      6FFFE0C0A0FFF0F8F0FFF0D8C0FFD0905FFFD0905FFFE0C8B0FFF0F8F0FFE0C8
      B0FFD0885FFFD0885FFFC0773FFFD1A989FF00000000B2E3C6FFA5DBBBFF98D0
      AEFF98CFAEFF98CFADFF99D0AEFF98D0AEFF98CFAEFF97CEACFF97CDACFF9AD1
      B0FF98CFAEFF96CDACFFAAE0BFFF264833AA00000000878784B9B6925FFFCBB5
      A2FFB68F4CFFA8731FFFA16A21FF945D1EFF87511BFF7D4412FFC1B1A3FFDAD6
      D3FF7C4F34FF5C2709FF958072FF4648485CC2E7F7FF2EA9DEFF35A0C7FFDEBF
      8AFFE2C9A7FFDFBFAEFFF1E3DCFFF3F1ECFFF4F1EBFFF1E2D9FFDCBAA3FFDFC3
      9EFF8CB1A9FF3CA8D2FF3BADDEFFD8EFFAFFEEDACEFFC37649FFD0986FFFE098
      6FFFE0A06FFFF0F8F0FFF0F8F0FFF0D8C0FFE0B090FFF0F0F0FFF0F8F0FFE0A8
      90FFD0905FFFD0885FFFB46F3AFFEAD8CAFF00000000B7E4C9FFB4E2C7FFB5E4
      C8FFB6E4C8FFB4E2C6FFB5E3C7FFB3E0C5FFB5E3C7FFB5E3C8FFB7E5C8FFB7E5
      C9FFB6E5C9FFB5E3C7FFB5E4C8FF274934AA00000000848383B9BEA264FFBFA9
      82FFBE9D4BFFBC9330FFB98E36FFAE7E30FF9A6725FF8B551DFF8F5B2AFF8B58
      2EFF733C15FF642A06FF947665FF484C4C5C82D0F1FF85D4F3FF6AC7E9FF3CA5
      C7FFE2C792FFE6D1A9FFE0C2A6FFD5AE96FFD5AB92FFDEBDA0FFE4CFA6FFBFC1
      9EFF47B3D7FFACE3F6FF48BCEBFFD8F0FBFF00000000DAAD92FFD0885FFFE098
      6FFFE0986FFFE0C0A0FFF0F8F0FFF0F8F0FFF0F8F0FFF0F8F0FFE0C8B0FFD090
      5FFFD0905FFFC0804FFFD1A989FF000000000000000000000000000000000000
      00000000000000000000010101262C4636B496C7A9FFA2CFB4FF9ECDB1FF9BC8
      ADFF9DCCB0FF77A58AF10000000000000000000000007F7F7FB9C0A771FFB69B
      69FFBA9850FFBD9541FFBD9445FFB58841FFAA7A3BFFA3743AFF9C6730FF9056
      22FF864B1AFF75390DFF9B7E6BFF4A4C4F5C84D5F4FF6DCFF2FFB5E8F9FF6ACB
      ECFF42AECEFFECC488FFE9CB94FFE7D09DFFE7D09DFFE9CB94FFDEC28EFF39AD
      D2FF86D5F1FF7ED4F4FF31B8EDFFFFFFFFFF0000000000000000D6A486FFD088
      5FFFD0986FFFE0986FFFE0986FFFE0B090FFE0B090FFD0986FFFD0905FFFD090
      5FFFC0804FFFCC9F7BFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004070541517D62DFA3CF
      B4FFA6D3B9FF112118830000000000000000000000007B7B78BACBB788FFDED1
      BEFFCEB379FFBE9950FFB78D4DFFB08548FFAF8349FFAF844BFFAF824CFFAF80
      4DFFA6723FFF844717FF9B7E68FF4C4F515CFFFFFFFF74D3F6FF6BD1F5FFBFEC
      FAFF69CFF2FF75C4D5FFFBCD96FFFAC17DFFFAC17DFFFBCD96FF7AC4D5FF73D3
      F3FF85D9F7FF35BFF2FFFFFFFFFFFFFFFFFF000000000000000000000000DAAD
      92FFC37649FFD0885FFFD0905FFFD0985FFFD0985FFFD0905FFFD0804FFFB46F
      49FFD1A992FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00050B140F6100000001000000000000000000000000817F7FBFCCC2ABFFCCBF
      A1FFCFC4A7FFCEC2A8FFCABBA2FFC7B6A0FFCAB9A3FFCBBAA5FFCBBAA6FFCCBB
      A9FFD0BEACFFC6B2A0FFCBC0B8FF4D4D4F5FFFFFFFFFFFFFFFFF7EDAF9FF2DC2
      F6FF34C4F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2DC2
      F6FF35C5F6FFD8F4FDFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000EEDACEFFDAAD92FFCF926DFFB47649FFB47649FFC3926DFFD1AD92FFEADA
      CEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000031313149505155664E4E
      53634E5055635153586353575A6356585D63575A5F63585C5F635A5D61635C5F
      61635C5F63635D616363585B5D66191919240000000000000000000000000000
      000000000000A0886FFF90775FFF806F5FFF806F5FFF806F5FFF806F5FFF0000
      0000000000000000000000000000000000000000000000000001000000030000
      0005000000080000000B0000000F000000120000001500000017000000190000
      001A000000170000000F0000000500000000000000000000000000000000A591
      79FFAE9C87FFD6CDC2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C1976DFFE3D0BEFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A09080FFFFFFFFFFFFFFFFFFFFF8FFFFFFF8FFFF806F5FFF0000
      0000000000000000000000000000000000000000000000000001000000050000
      000A00000010000000160000001D00000024000000290000002E080000624702
      00CB0000002E0000001D0000000A000000000000000000000000000000008E74
      56FFFFD598FF8E7456FFD8CFC5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D8BDA3FFD4B699FFBB8C5EFFE0CAB5FF0000000000000000000000000000
      000000000000000000000000000000000000C8C4C8FF908890FF6F5F5FFF4F47
      4FFF4F4F4FFFA09080FFFFFFFFFFF0D8B0FFF0D8B0FFF0D8B0FF806F5FFF4F4F
      4FFF4F474FFF6F5F5FFF6F675FFF9B9B9BFF0000000000000000000000000000
      00000000000000000000000000000000000000000003070100464D0700C84D07
      00C8000000000000000000000000000000000000000000000000000000008E74
      56FFFFD598FFFFD598FF8E7456FFD9D1C7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C2976EFFF5EEE7FFD5B89DFFBA8B5CFFDCC4ADFF000000000000
      000000000000000000000000000000000000909090FF909890FFA0A0A0FF3F37
      3FFF3F373FFFA09080FFFFFFFFFFFFE8D0FFE0774FFFF0D8B0FF806F5FFF3F37
      3FFF3F373FFF909090FF909090FF6F675FFF0000000000000000000000000000
      00040700003C2A07018C440900B1540D02C4550D02C5550D02C5FA7240FF550D
      02C5000000040000000000000000000000008E7456FF8E7456FF8E7456FF8E74
      56FFFFD598FFF49B36FFFFD598FF85694BFFB3998EFF77534EFF73504CFF714E
      4AFF6E4B48FF6A4945FF634441FF0000000000000000D1B193FFB98859FFB887
      57FFB88757FFD5B89DFFFFFFFFFFFFFFFFFFF8F3EFFFD5B89DFFC49C74FF0000
      000000000000000000000000000000000000909090FFA0A0A0FF909890FF3F37
      3FFF3F373FFF90886FFFE0E8E0FFF0E0B0FFF0D8B0FFF0D8B0FF806F5FFF3F37
      3FFF3F373FFFA0A0A0FFA0A0A0FF6F675FFF0000000000000000000000112906
      0186711E0AD0B34724EBDA5F34F8F06C3CFFF16D3CFFF16D3CFFF16D3CFF711E
      0AD0290601860000001100000000000000008E7456FFFFE3BAFFFFD598FFFFD5
      98FFFFD598FFFFAA4BFFF49B36FFFFD598FF8A6A4EFFBF8990FFC27891FF9438
      52FFCE7091FFC65C7EFF715653FF00000000CEAC8BFFDAC1A9FFFEFEFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEEEE2FFFDE3D0FFFEF2E9FFFFFFFFFFDFC9B4FFC298
      6FFF00000000000000000000000000000000908890FF908890FF908890FF6F6F
      6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
      6FFF6F6F6FFF908890FF908080FF6F675FFF00000000000000082F08018D9134
      19DEE0643BFDE56638FFD75D32FFEDEDEDFFEEEEEEFFD75D32FFE56538FFDF61
      36FD8F2F14DE2F08018D00000008000000008E7456FFFFE3BAFFFFB870FFFFB4
      67FFFFB059FFFFAA4BFFFEA441FFF49B36FFFFE3BAFF896D4FFFA4D7F0FFB292
      8FFF943852FFCE7091FF8C7371FF00000000B98859FFFEFEFDFFFEF2E9FFFEEC
      DFFF174158FF2A6088FF4B89BDFF6EA3C2FFE1D5CCFFFCE4D1FFFFFFFFFFC8A2
      7CFFEFE4DAFF000000000000000000000000908890FFC0B8C0FFD0C8D0FF8088
      80FFB0A8B0FFB0A8B0FFB0A8B0FFB0A8B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0
      B0FF807780FFC0C8C0FFB0B0B0FF6F675FFF000000000D03004D7A2611D2D965
      3BFED85E33FFD85E33FFCD572EFFE2E2E2FFEDEDEDFFCD572EFFD85E33FFD85E
      33FFD55D32FE77210CD20D03004D000000008E7456FFFFE3BAFFFFE3BAFFFFE3
      BAFFFFE3BAFFFFAA4BFFFEA540FFFFE3BAFF866A4CFF9BD1E3FF58A6C9FF5DA6
      CAFF815049FF92354DFFBBA9AAFF00000000C0956BFFFFFFFFFFFEF0E5FFFEEE
      E2FF2D6684FF94C7F9FF91C9F9FF4085C9FF2669ACFFD7D0CDFFFFFFFFFFCDAA
      89FFEADCCEFF000000000000000000000000909090FFD0D0D0FFD0C8D0FF8088
      80FFB0A8B0FFB0A8B0FFB0A8B0FFB0A8B0FFFFA85FFFFFA85FFFFFA85FFFB0B0
      B0FF807780FFC0C8C0FFC0C0C0FF6F675FFF00000000370B0196B65738EFCB57
      2EFFCB562DFFCB562DFFC3522AFFD6D6D6FFE2E2E2FFC3522AFFCB562DFFCB56
      2DFFCB562DFFAC4523EF370B0196000000008E7456FF8E7456FF8E7456FF8E74
      56FFFFE3BAFFFEA94CFFFFE3BAFF8A7052FFBF9A92FF478BACFF4E8EABFF478A
      ADFF824F49FFC2C2B3FF0000000000000000C0956BFFFFFFFFFFFEF1E8FFFEF0
      E6FF4289AAFFE0F2FFFF539AD8FF1979BEFF4898C5FF478CC3FFDCEAF7FFCDAA
      89FFEADCCEFF000000000000000000000000909090FFF0F8F0FFF0F0F0FFA0A0
      A0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0
      D0FF909890FFF0F0F0FFF0E8F0FF6F675FFF00000000551200B7D57553FCC85D
      39FFC0502AFFBE4E28FFB94C26FFCDCDCDFFD6D6D6FFB94C26FFBE4E28FFBE4E
      28FFBE4E28FFBD522FFC551200B7000000000000000000000000000000008E74
      56FFFFE3BAFFFFE3BAFF8E7456FF9DA8AAFF54A7D5FF73D9F8FF7DCFF6FF74C9
      F2FF54A1CAFF667A80FF0000000000000000B98859FFFEFEFDFFFEF6F0FFFEF2
      E9FFA7BCC9FF79B6D5FF90B7D1FF54C9E4FF5ADFF5FF77D0EDFF509DDDFFB49D
      87FFF0E6DCFF000000000000000000000000A098A0FFFFFFFFFFFFFFFFFF9090
      90FFE0D8E0FFE0D8E0FFE0D8E0FFE0D8E0FFE0D8E0FFE0D8E0FFE0D8E0FFE0D8
      E0FF808880FFF0F8F0FFF0F8F0FF6F675FFF00000000571200B7D97A58FCCD65
      43FFCA613FFFBE522FFFB24724FFCCCCCCFFCDCDCDFFB14623FFB44824FFB448
      24FFB44824FFBA5231FC571200B7000000000000000000000000000000008E74
      56FFFFE3BAFF8E7456FFB0B8BCFF2D688FFF8FDFF8FF93ECFCFF90DFF8FF88D8
      FAFF7CCFF7FF2D688FFF89A2ACFF00000000CEAC8BFFDAC1A9FFFDFCFBFFFFFF
      FFFFFFFFFFFFB4D7E7FF75BAD7FFC2F6FDFF62DFF7FF5CE2F8FF78D3F0FF4795
      D7FF00000000000000000000000000000000DBDBDBFFB0B0B0FFB0B0B0FF9090
      90FF909090FF909090FF909090FF909090FF908890FF908890FF908890FF9088
      80FF808880FF909090FF909090FFBEC2BEFF000000003A0C0194C26949EED36B
      49FFD26A48FFD26A48FFCD6543FFAF4624FFAC4321FFB14826FFAD4422FFAD44
      22FFB14826FFAB4E31EE3A0C019400000000000000000000000000000000A591
      79FFB9AA98FF00000000284A6CFF59A9CFFF97E8FAFF9CF3FCFF98E6FAFF8CDB
      FAFF7DCFF5FF57AAD4FF366376FF0000000000000000D1B193FFBA8A5BFFB887
      57FFB88757FFB88757FF828677FF76CBE7FFC7F7FDFF5DDCF5FF59E1F7FF7AD4
      F1FF4B9ADEFFD6E8F7FF00000000000000000000000000000000000000009090
      90FF6F676FFFB09080FFFFFFFFFFFFFFFFFFFFF8FFFFFFF8FFFF806F5FFF6F6F
      6FFF858585FF000000000000000000000000000000001003004C86341BD0E584
      62FEDC7452FFDC7452FFCF6745FFFFFFFFFFFFFFFFFFCF6745FFDC7452FFDC74
      52FFE07F5BFE833017D01003004C000000000000000000000000000000000000
      000000000000000000000E355FFF2D688FFF99EDFCFFA3F7FCFF9DEAFAFF8EDE
      F8FF7CCEF5FF2D688FFF235F79FF000000000000000000000000000000000000
      0000000000000000000000000000BFE8F5FF78D3EEFFC7F7FDFF5EDCF5FF5AE2
      F7FF79D6F2FF50A2E2FFDCEAF6FF00000000000000000000000000000000A6A6
      A6FF4F574FFFB09080FFFFFFFFFFFFFFFFFFFFF8FFFFFFF8FFFF806F5FFF4F57
      4FFF9B979BFF0000000000000000000000000000000000000008330C01899E4A
      2EDBE98B67FDE7815DFFD76F4DFFFFFFFFFFFFFFFFFFD76F4DFFE7815DFFE887
      63FD9C4629DB330C018900000008000000000000000000000000000000000000
      00000000000000000000385F89FF0D8EECFF457D98FF6AA6B1FF8BDBF3FF5691
      A7FF1A5187FF0B8DECFF2C556CFF000000000000000000000000000000000000
      000000000000000000000000000000000000C1EBF7FF7CD4EEFFC4F6FDFF6BDD
      F6FF6CCAEDFF62A3D7FF68A2D5FF000000000000000000000000000000000000
      000000000000B09080FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFF806F5FFF0000
      0000000000000000000000000000000000000000000000000000010000102E0C
      01827F3114CBC06849E9E38966F8F59773FFF59773FFE38765F8BF6546E97F2E
      14CB2E0C01820100001000000000000000000000000000000000000000000000
      0000000000000000000095979BFF20557DFF3AC4FFFF0B8DECFF0864ABFF3AC4
      FFFF0B8DECFF023B7CFF8E949AFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5E6F5FF81D6EEFFB2E3
      F9FF8BC0E7FFAED3F6FFC4E0FCFF6AA2D4FF0000000000000000000000000000
      000000000000B09080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF806F5FFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00040902003A320D0186531501AA651800BC651800BC531501AA320D01860902
      003A000000040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CCCED0FF5C809CFF295074FF123B6EFF1F42
      72FF466794FFB1BBC8FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B1E6F5FF76BE
      E7FFB4D2F0FFE5F3FFFFACD2EFFF5896CCFF0000000000000000000000000000
      000000000000B09080FFB09080FFB09080FFB09080FFB09080FFB09080FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BCE5
      F4FF57A5D8FF85B1DBFF459DD0FFB1D8EEFF424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F00FF800F8030000E0070000E001
      0000C0030000A000000080010000F00000000000800080000000000080008000
      0000000080008000000000008000800000000000800080000000000080008000
      0000000080008000000000008000800000008001FC0380000000C003FF838000
      0000E007FFE380000000F00FFFFF800000008001E3FFF3FF00008001E1FFF0FF
      0000FF0FE0FFF83F0000E0070001801F0000C0030001000F0000800100010007
      0000800100010007000080010003000700008001E003000700008001E001000F
      00008001E401800300008001FC01FE0100008001FC01FF010000C003FC01FF80
      0000E007FE03FFC00000FFFFFFFFFFE000000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    Images = ImageList1
    OnPopup = PopupMenu1Popup
    Left = 487
    Top = 180
    object Pessoas1: TMenuItem
      Caption = 'Pessoas'
      ShortCut = 122
      OnClick = Pessoas1Click
    end
    object Pedido1: TMenuItem
      Caption = 'Pedido'
      ShortCut = 123
      Visible = False
      OnClick = Pedido1Click
    end
    object Paciente1: TMenuItem
      Caption = 'Paciente'
      ShortCut = 121
      Visible = False
      OnClick = Paciente1Click
    end
    object mnuVisualizarFinanceiroPessoa: TMenuItem
      Caption = 'Visualizar financeiro pessoa'
      Visible = False
      OnClick = mnuVisualizarFinanceiroPessoaClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Repetir1: TMenuItem
      Caption = 'Repetir agendamento'
      ShortCut = 16466
    end
    object Histrico1: TMenuItem
      Caption = 'Hist'#243'rico'
      Enabled = False
      ImageIndex = 1
      ShortCut = 16456
      Visible = False
      OnClick = Histrico1Click
    end
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      ImageIndex = 0
      ShortCut = 16464
      OnClick = Imprimir1Click
    end
    object Impressao: TMenuItem
      Caption = 'Impress'#227'o Personalizada'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
    object Faturar1: TMenuItem
      Caption = 'Faturar'
      OnClick = Faturar1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
    end
    object Confirmar1: TMenuItem
      Caption = 'Confirmar'
    end
    object GerarContratoProposta1: TMenuItem
      Caption = 'Gerar Contrato / Proposta'
      OnClick = GerarContratoProposta1Click
    end
    object Exibirhistrico1: TMenuItem
      Caption = 'Exibir hist'#243'rico completo'
      OnClick = Exibirhistrico1Click
    end
    object AlterarCliente1: TMenuItem
      Caption = 'Alterar Cliente'
      OnClick = AlterarCliente1Click
    end
    object S1: TMenuItem
      Caption = 'Seguidores'
      OnClick = S1Click
    end
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = BtnAtribuido
        Properties.Strings = (
          'LookAndFeel.Kind')
      end
      item
        Component = BtnConclusaoDaTarefa
        Properties.Strings = (
          'LookAndFeel.Kind')
      end
      item
        Component = BtnCondicaoDePagamento
        Properties.Strings = (
          'LookAndFeel.Kind')
      end
      item
        Component = BtnContato
        Properties.Strings = (
          'LookAndFeel.Kind')
      end
      item
        Component = BtnDadosDoCliente
        Properties.Strings = (
          'LookAndFeel.Kind')
      end
      item
        Component = BtnDatasDoAgendamento
        Properties.Strings = (
          'LookAndFeel.Kind')
      end
      item
        Component = BtnEquipamentos
        Properties.Strings = (
          'LookAndFeel.Kind')
      end
      item
        Component = BtnFaturamento
        Properties.Strings = (
          'LookAndFeel.Kind')
      end
      item
        Component = BtnInformacoesDeCriacaoAlteracao
        Properties.Strings = (
          'LookAndFeel.Kind')
      end
      item
        Component = BtnLembrete
        Properties.Strings = (
          'LookAndFeel.Kind')
      end
      item
        Component = BtnProcedimento
        Properties.Strings = (
          'LookAndFeel.Kind')
      end
      item
        Component = BtnResponsavel
        Properties.Strings = (
          'LookAndFeel.Kind')
      end
      item
        Component = BtnSetor
        Properties.Strings = (
          'LookAndFeel.Kind')
      end
      item
        Component = GrupoAgendaSetor
        Properties.Strings = (
          'Visible')
      end
      item
        Component = GrupoCondicaoPagto
        Properties.Strings = (
          'Visible')
      end
      item
        Component = GrupoDadosCliente
        Properties.Strings = (
          'Visible')
      end
      item
        Component = GrupoEquipamento
        Properties.Strings = (
          'Visible')
      end
      item
        Component = GrupoFuncionario
        Properties.Strings = (
          'Visible')
      end
      item
        Component = GrupoPedidos
        Properties.Strings = (
          'Visible')
      end
      item
        Component = GrupoProcedimento
        Properties.Strings = (
          'Visible')
      end
      item
        Component = GrupoResponsavel
        Properties.Strings = (
          'Visible')
      end
      item
        Component = LayoutEdtSolicitante
        Properties.Strings = (
          'Visible')
      end>
    StorageName = 'FrmAgendaEditor'
    StorageType = stRegistry
    Left = 543
    Top = 180
  end
  object MenuGrupos: TPopupMenu
    OnPopup = MenuGruposPopup
    Left = 487
    Top = 152
    object Procedimento1: TMenuItem
      Caption = 'Procedimento'
      OnClick = Procedimento1Click
    end
    object ConclusaoTarefa1: TMenuItem
      Caption = 'Conclus'#227'o da Tarefa'
      OnClick = ConclusaoTarefa1Click
    end
    object Horarios1: TMenuItem
      Caption = 'Datas do Agendamento'
      OnClick = Horarios1Click
    end
    object Equipamentos1: TMenuItem
      Caption = 'Equipamentos'
      OnClick = Equipamentos1Click
    end
    object Responsavel1: TMenuItem
      Caption = 'Respons'#225'vel'
      OnClick = Responsavel1Click
    end
    object Atribuidoa1: TMenuItem
      Caption = 'Atribuido a'
      OnClick = Atribuidoa1Click
    end
    object Faturamento2: TMenuItem
      Caption = 'Faturamento'
      OnClick = Faturamento2Click
    end
    object PlaceHolder1: TMenuItem
      Caption = 'Lembrete'
      OnClick = PlaceHolder1Click
    end
    object CondiodePagamento1: TMenuItem
      Caption = 'Condi'#231#227'o de Pagamento'
      OnClick = CondiodePagamento1Click
    end
    object InformaesdeCriaoeAlterao1: TMenuItem
      Caption = 'Informa'#231#245'es de Cria'#231#227'o e Altera'#231#227'o'
      OnClick = InformaesdeCriaoeAlterao1Click
    end
  end
  object TimerBotoes: TTimer
    Enabled = False
    Interval = 300
    OnTimer = TimerBotoesTimer
    Left = 487
    Top = 124
  end
  object ACBrCEP1: TACBrCEP
    ProxyPort = '8080'
    WebService = wsRepublicaVirtual
    PesquisarIBGE = True
    OnBuscaEfetuada = ACBrCEP1BuscaEfetuada
    Left = 459
    Top = 180
  end
  object CadPessoas: TIBDataSet
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    AfterInsert = CadPessoasAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PESSOAS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into PESSOAS'
      
        '  (ATIVO, CEP, CODCIDADE, CODIGO, CONTATO, CRT, DATACADASTRO, EM' +
        'AIL, ENDERECO, '
      '   FANTASIA, FONE1, NUMERO, RAZAOSOCIAL, TIPO)'
      'values'
      
        '  (:ATIVO, :CEP, :CODCIDADE, :CODIGO, :CONTATO, :CRT, :DATACADAS' +
        'TRO, :EMAIL, '
      '   :ENDERECO, :FANTASIA, :FONE1, :NUMERO, :RAZAOSOCIAL, :TIPO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  DATACADASTRO,'
      '  CRT,'
      '  TIPO,'
      '  FANTASIA,'
      '  RAZAOSOCIAL,'
      '  ENDERECO,'
      '  FONE1,'
      '  CEP,'
      '  CODCIDADE,'
      '  NUMERO,'
      '  EMAIL,'
      '  CONTATO,'
      '  ATIVO'
      'from PESSOAS '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      
        'select CODIGO, DATACADASTRO, CRT, TIPO, FANTASIA, RAZAOSOCIAL, E' +
        'NDERECO, FONE1, CEP, '
      '       CODCIDADE, NUMERO, EMAIL, CONTATO, ATIVO'
      'from PESSOAS'
      'where (CODIGO = :Cod)')
    ModifySQL.Strings = (
      'update PESSOAS'
      'set'
      '  ATIVO = :ATIVO,'
      '  CEP = :CEP,'
      '  CODCIDADE = :CODCIDADE,'
      '  CODIGO = :CODIGO,'
      '  CONTATO = :CONTATO,'
      '  CRT = :CRT,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  EMAIL = :EMAIL,'
      '  ENDERECO = :ENDERECO,'
      '  FANTASIA = :FANTASIA,'
      '  FONE1 = :FONE1,'
      '  NUMERO = :NUMERO,'
      '  RAZAOSOCIAL = :RAZAOSOCIAL,'
      '  TIPO = :TIPO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 375
    Top = 124
    object CadPessoasCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PESSOAS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object CadPessoasDATACADASTRO: TDateTimeField
      FieldName = 'DATACADASTRO'
      Origin = '"PESSOAS"."DATACADASTRO"'
    end
    object CadPessoasCRT: TIBStringField
      FieldName = 'CRT'
      Origin = '"PESSOAS"."CRT"'
      Size = 50
    end
    object CadPessoasTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"PESSOAS"."TIPO"'
      Size = 1
    end
    object CadPessoasFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"PESSOAS"."FANTASIA"'
      Size = 150
    end
    object CadPessoasRAZAOSOCIAL: TIBStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = '"PESSOAS"."RAZAOSOCIAL"'
      Size = 150
    end
    object CadPessoasENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"PESSOAS"."ENDERECO"'
      Size = 100
    end
    object CadPessoasFONE1: TIBStringField
      FieldName = 'FONE1'
      Origin = '"PESSOAS"."FONE1"'
      Size = 30
    end
    object CadPessoasCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"PESSOAS"."CEP"'
      Size = 10
    end
    object CadPessoasCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Origin = '"PESSOAS"."CODCIDADE"'
    end
    object CadPessoasNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"PESSOAS"."NUMERO"'
      Size = 60
    end
    object CadPessoasEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"PESSOAS"."EMAIL"'
      Size = 100
    end
    object CadPessoasCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"PESSOAS"."CONTATO"'
      Size = 30
    end
    object CadPessoasATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"PESSOAS"."ATIVO"'
      Size = 1
    end
  end
  object SPClientes: TIBStoredProc
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    StoredProcName = 'GENPESSOAS1'
    Left = 403
    Top = 152
  end
  object Situacao: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select S.*'
      'from SETOR_STATUS SS'
      'left join STATUS S on (S.CODIGO = SS.CODSTATUS)'
      'where (SS.CODSETOR = :CodSetor)')
    Left = 375
    Top = 257
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CodSetor'
        ParamType = ptUnknown
      end>
    object SituacaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"STATUS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SituacaoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"STATUS"."DESCRICAO"'
      Size = 50
    end
    object SituacaoCOR: TIntegerField
      FieldName = 'COR'
      Origin = '"STATUS"."COR"'
    end
  end
  object DSSituacao: TDataSource
    AutoEdit = False
    DataSet = Situacao
    Left = 403
    Top = 257
  end
  object PopupMenuOK: TPopupMenu
    Left = 515
    Top = 152
    object EnviarEmail1: TMenuItem
      Caption = 'Enviar Email'
      object NovoEmail1: TMenuItem
        Caption = 'Nova Mensagem'
        OnClick = NovoEmail1Click
      end
      object ltimaMensagem1: TMenuItem
        Tag = 1
        Caption = #218'ltima Mensagem'
        Visible = False
        OnClick = EnviarEmail1Click
      end
      object HistricoCompletodeMensagens1: TMenuItem
        Tag = 2
        Caption = 'Hist'#243'rico Completo de Mensagens'
        OnClick = EnviarEmail1Click
      end
    end
    object F1: TMenuItem
      Caption = 'Finalizar Ticket'
      OnClick = F1Click
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 487
    Top = 208
  end
  object Agenda_Seguidor: TIBDataSet
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    AfterInsert = Agenda_SeguidorAfterInsert
    BeforeOpen = Agenda_SeguidorBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from AGENDA_SEGUIDOR'
      'where'
      '  CODAGENDA = :OLD_CODAGENDA and'
      '  CODUSUARIO = :OLD_CODUSUARIO')
    InsertSQL.Strings = (
      'insert into AGENDA_SEGUIDOR'
      '  (CODAGENDA, CODUSUARIO)'
      'values'
      '  (:CODAGENDA, :CODUSUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODAGENDA,'
      '  CODUSUARIO'
      'from AGENDA_SEGUIDOR '
      'where'
      '  CODAGENDA = :CODAGENDA and'
      '  CODUSUARIO = :CODUSUARIO')
    SelectSQL.Strings = (
      'select ASG.*, U.USUARIO'
      'from AGENDA_SEGUIDOR ASG'
      'inner join USUARIO U on (U.CODIGO = ASG.CODUSUARIO)'
      'where (ASG.CODAGENDA = :CodAgenda)')
    ModifySQL.Strings = (
      'update AGENDA_SEGUIDOR'
      'set'
      '  CODAGENDA = :CODAGENDA,'
      '  CODUSUARIO = :CODUSUARIO'
      'where'
      '  CODAGENDA = :OLD_CODAGENDA and'
      '  CODUSUARIO = :OLD_CODUSUARIO')
    ParamCheck = True
    UniDirectional = False
    Left = 378
    Top = 308
    object Agenda_SeguidorCODAGENDA: TIBStringField
      FieldName = 'CODAGENDA'
      Origin = '"AGENDA_SEGUIDOR"."CODAGENDA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object Agenda_SeguidorCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Origin = '"AGENDA_SEGUIDOR"."CODUSUARIO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Agenda_SeguidorUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"USUARIO"."USUARIO"'
      Size = 30
    end
  end
  object DSAgenda_Seguidor: TDataSource
    DataSet = Agenda_Seguidor
    Left = 406
    Top = 308
  end
  object AgendaAnexo: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 474
    Top = 310
    object AgendaAnexoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 40
    end
    object AgendaAnexoPESSOA_CLIENTE_CODIGO: TStringField
      FieldName = 'PESSOA_CLIENTE_CODIGO'
      Size = 10
    end
  end
  object DSAgendaAnexo: TDataSource
    AutoEdit = False
    DataSet = AgendaAnexo
    Left = 502
    Top = 310
  end
end
