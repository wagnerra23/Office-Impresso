object FrmFrame_Acao_Configuracao: TFrmFrame_Acao_Configuracao
  Left = 0
  Top = 0
  Caption = 'Configurar A'#231#245'es'
  ClientHeight = 531
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 640
    Height = 531
    Align = alClient
    TabOrder = 0
    object chkFiltroDeletado: TcxCheckBox
      Left = 22
      Top = 127
      Caption = 'Bloquear'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
    end
    object chkFiltroEditado: TcxCheckBox
      Left = 22
      Top = 100
      Caption = 'Enviar E-mail'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
    end
    object chkFiltroNovo: TcxCheckBox
      Left = 22
      Top = 73
      Caption = 'Notificar'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
    end
    object cxRadioGroup1: TcxRadioGroup
      Left = 10000
      Top = 10000
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Todas as Regras abaixo'
          Value = 0
        end
        item
          Caption = 'Pelo menos uma das regras abaixo'
          Value = 1
        end
        item
          Caption = 'Todos os Registros'
          Value = 2
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Shadow = False
      TabOrder = 9
      Visible = False
      Height = 40
      Width = 185
    end
    object cxComboBox1: TcxComboBox
      Left = 10000
      Top = 10000
      Properties.Items.Strings = (
        'Vencimento'
        'Emiss'#227'o'
        'Recebimento')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Visible = False
      Width = 121
    end
    object cxGrid1: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 101
      TabOrder = 8
      Visible = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxComboBox2: TcxComboBox
      Left = 10000
      Top = 10000
      Properties.Items.Strings = (
        'diferente'
        'menor que'
        'menor ou igual '#224
        'maior que'#39
        'maior ou igual '#224
        'esta vazio'
        'n'#227'o est'#225' vazio')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Visible = False
      Width = 121
    end
    object cxComboBox3: TcxComboBox
      Left = 10000
      Top = 10000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Visible = False
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 10000
      Top = 10000
      Width = 30
      Height = 25
      Caption = '+'
      TabOrder = 11
      Visible = False
    end
    object cxButton2: TcxButton
      Left = 10000
      Top = 10000
      Width = 30
      Height = 25
      Caption = '-'
      TabOrder = 14
      Visible = False
    end
    object cxComboBox4: TcxComboBox
      Left = 10000
      Top = 10000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Visible = False
      Width = 121
    end
    object cxGrid2: TcxGrid
      Left = 10
      Top = 369
      Width = 620
      Height = 101
      TabOrder = 6
      object cxGridDBTableView1: TcxGridDBTableView
        OnDblClick = cxGridDBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSAcoes
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridDBTableView1Acao: TcxGridDBColumn
          DataBinding.FieldName = 'Acao'
          Width = 222
        end
        object cxGridDBTableView1Quantidade: TcxGridDBColumn
          DataBinding.FieldName = 'Quantidade'
          Width = 396
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object tcBotoesConfirmar: TdxTileControl
      Left = 462
      Top = 496
      Width = 168
      Height = 25
      Align = alNone
      AutoSize = True
      OptionsBehavior.ItemMoving = False
      OptionsView.CenterContentVert = True
      OptionsView.GroupIndent = 0
      OptionsView.IndentHorz = 0
      OptionsView.IndentVert = 0
      OptionsView.ItemHeight = 25
      OptionsView.ItemWidth = 80
      TabOrder = 7
      Transparent = True
      object GrupoConfirmarCancelar: TdxTileControlGroup
        Index = 0
      end
      object dxTileControl1Item1: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Style.BorderColor = 8403323
        Style.GradientBeginColor = 9716621
        Style.GradientEndColor = 8403323
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'OK'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = dxTileControl1Item1Click
      end
      object dxTileControl1Item2: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Style.BorderColor = 9805213
        Style.GradientBeginColor = 11910075
        Style.GradientEndColor = 11910075
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avTextColor]
        Text1.Value = 'Cancelar'
        Text1.TextColor = clBackground
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = dxTileControl1Item2Click
      end
    end
    object fcFiltroGrid: TcxFilterControl
      Left = 10
      Top = 184
      Width = 620
      Height = 136
      TabOrder = 4
    end
    object tcAcoes: TdxTileControl
      Left = 10
      Top = 338
      Width = 228
      Height = 25
      Align = alNone
      AutoSize = True
      OptionsView.CenterContentVert = True
      OptionsView.GroupIndent = 0
      OptionsView.IndentHorz = 0
      OptionsView.IndentVert = 0
      OptionsView.ItemHeight = 25
      OptionsView.ItemWidth = 110
      TabOrder = 5
      Transparent = True
      object dxTileControlGroup1: TdxTileControlGroup
        Index = 0
      end
      object tiAdicionarAcao: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Style.BorderColor = 8403323
        Style.GradientBeginColor = 9716621
        Style.GradientEndColor = 8403323
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'Adicionar A'#231#227'o'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiAdicionarAcaoClick
      end
      object tiRemoverAcao: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Style.BorderColor = 9805213
        Style.GradientBeginColor = 11910075
        Style.GradientEndColor = 11910075
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avTextColor]
        Text1.Value = 'Remover A'#231#227'o'
        Text1.TextColor = clBackground
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = dxTileControl1Item2Click
      end
    end
    object edtDescricao: TcxTextEdit
      Left = 10
      Top = 28
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 620
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ItemIndex = 3
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chkFiltroDeletado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Visible = False
      Control = chkFiltroEditado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Visible = False
      Control = chkFiltroNovo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'A'#231#245'es'
      Visible = False
      ItemIndex = 2
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      AlignVert = avTop
      CaptionOptions.Text = 'cxRadioGroup1'
      CaptionOptions.Visible = False
      Control = cxRadioGroup1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 40
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Campo'
      CaptionOptions.Layout = clTop
      Control = cxComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 101
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Condi'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = cxComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      Control = cxComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 30
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 30
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      Control = cxComboBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avClient
      Control = cxGrid2
      ControlOptions.OriginalHeight = 101
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      AlignVert = avBottom
      Offsets.Top = 20
      CaptionOptions.Text = 'dxTileControl1'
      CaptionOptions.Visible = False
      Control = tcBotoesConfirmar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 168
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Adicionar Condi'#231#227'o'
      ItemIndex = 1
      Index = -1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'A'#231#245'es'
      ShowBorder = False
      Index = 4
    end
    object lifcFiltroGrid: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Condi'#231#245'es'
      CaptionOptions.Layout = clTop
      Control = fcFiltroGrid
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avClient
      Control = tcAcoes
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 228
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDescricao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object pnlAdicionarAcao: TPanel
    Left = 170
    Top = 55
    Width = 377
    Height = 308
    Caption = 'pnlAdicionarAcao'
    TabOrder = 1
    Visible = False
    OnEnter = pnlAdicionarAcaoEnter
    object dxLayoutControl2: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 375
      Height = 306
      Align = alClient
      TabOrder = 0
      object cbAcoes: TcxComboBox
        Left = 10
        Top = 28
        Properties.Items.Strings = (
          'Notifica'#231#227'o'
          'Enviar E-mail'
          'Proibir'
          'Limitar')
        Properties.OnChange = cbAcoesPropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.TransparentBorder = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 0
        Text = 'Notificar'
        Width = 338
      end
      object dxTileControl1: TdxTileControl
        Left = 180
        Top = 381
        Width = 168
        Height = 25
        Align = alNone
        AutoSize = True
        OptionsView.CenterContentVert = True
        OptionsView.GroupIndent = 0
        OptionsView.IndentHorz = 0
        OptionsView.IndentVert = 0
        OptionsView.ItemHeight = 25
        OptionsView.ItemWidth = 80
        TabOrder = 7
        Transparent = True
        object dxTileControlGroup2: TdxTileControlGroup
          Index = 0
        end
        object dxTileControlItem1: TdxTileControlItem
          GroupIndex = 0
          IndexInGroup = 0
          Style.BorderColor = 8403323
          Style.GradientBeginColor = 9716621
          Style.GradientEndColor = 8403323
          Text1.Align = oaMiddleCenter
          Text1.AssignedValues = [avFont]
          Text1.Font.Charset = DEFAULT_CHARSET
          Text1.Font.Color = clDefault
          Text1.Font.Height = -11
          Text1.Font.Name = 'Segoe UI'
          Text1.Font.Style = []
          Text1.Value = 'OK'
          Text2.AssignedValues = []
          Text3.AssignedValues = []
          Text4.AssignedValues = []
          OnClick = dxTileControlItem1Click
        end
        object dxTileControlItem2: TdxTileControlItem
          GroupIndex = 0
          IndexInGroup = 1
          Style.BorderColor = 9805213
          Style.GradientBeginColor = 11910075
          Style.GradientEndColor = 11910075
          Text1.Align = oaMiddleCenter
          Text1.AssignedValues = [avTextColor]
          Text1.Value = 'Cancelar'
          Text1.TextColor = clBackground
          Text2.AssignedValues = []
          Text3.AssignedValues = []
          Text4.AssignedValues = []
          OnClick = dxTileControlItem2Click
        end
      end
      object GridUsuariosNotificados: TcxGrid
        Left = 10
        Top = 73
        Width = 338
        Height = 136
        TabOrder = 1
        object GridUsuariosNotificadosDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DSMemUsuarios
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object GridUsuariosNotificadosDBTableView1Ativo: TcxGridDBColumn
            DataBinding.FieldName = 'Ativo'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.OnValidate = cxGrid3DBTableView1AtivoPropertiesValidate
            Width = 44
          end
          object GridUsuariosNotificadosDBTableView1Usurio: TcxGridDBColumn
            DataBinding.FieldName = 'Usuario'
            Width = 292
          end
          object GridUsuariosNotificadosDBTableView1CodUsuario: TcxGridDBColumn
            DataBinding.FieldName = 'CodUsuario'
            Visible = False
          end
          object GridUsuariosNotificadosDBTableView1CodFuncionario: TcxGridDBColumn
            DataBinding.FieldName = 'CodFuncionario'
            Visible = False
          end
        end
        object GridUsuariosNotificadosLevel1: TcxGridLevel
          GridView = GridUsuariosNotificadosDBTableView1
        end
      end
      object edtEmailsAdicionais: TcxTextEdit
        Left = 22
        Top = 342
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 6
        Width = 314
      end
      object chkCliente: TCheckBox
        Left = 22
        Top = 301
        Width = 314
        Height = 17
        Caption = 'Enviar para Cliente'
        TabOrder = 5
      end
      object edtModeloEmailÎEMAIL_MODELO: TcxButtonEdit
        Left = 10
        Top = 233
        Margins.Left = 0
        Margins.Top = 0
        AutoSize = False
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.TransparentBorder = False
        Style.ButtonStyle = bts3D
        Style.IsFontAssigned = True
        TabOrder = 2
        Height = 21
        Width = 78
      end
      object edtModeloEmailÎEMAIL_MODELOÎDESCRICAO: TcxLabel
        Left = 94
        Top = 233
        AutoSize = False
        Style.HotTrack = False
        Style.TransparentBorder = False
        Height = 21
        Width = 254
      end
      object cbxEnviarPDF: TCheckBox
        Left = 10
        Top = 260
        Width = 338
        Height = 17
        Caption = 'Enviar PDF'
        TabOrder = 4
      end
      object dxLayoutControl2Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem12: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'A'#231#245'es'
        CaptionOptions.Layout = clTop
        Control = cbAcoes
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem13: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahRight
        AlignVert = avBottom
        Control = dxTileControl1
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 168
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object liGridUsuariosNotificados: TdxLayoutItem
        Parent = GrupoNotificacao
        CaptionOptions.Text = 'Quem dever'#225' ser notificado?'
        CaptionOptions.Layout = clTop
        Control = GridUsuariosNotificados
        ControlOptions.OriginalHeight = 136
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem14: TdxLayoutItem
        Parent = GrupoDestinatario
        CaptionOptions.Text = 'E-mails adicionais (separados por ponto-v'#237'rgula)'
        CaptionOptions.Layout = clTop
        Control = edtEmailsAdicionais
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem19: TdxLayoutItem
        Parent = GrupoDestinatario
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'CheckBox1'
        CaptionOptions.Visible = False
        Control = chkCliente
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 97
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object GrupoDestinatario: TdxLayoutGroup
        Parent = GrupoEmail
        CaptionOptions.Text = 'Destinat'#225'rios'
        ItemIndex = 1
        Index = 1
      end
      object GrupoNotificacao: TdxLayoutGroup
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Text = 'New Group'
        Visible = False
        ShowBorder = False
        Index = 1
      end
      object dxLayoutItem20: TdxLayoutItem
        Parent = GrupoModelo
        AlignHorz = ahClient
        CaptionOptions.Text = 'Modelo de Email'
        CaptionOptions.Layout = clTop
        Control = edtModeloEmailÎEMAIL_MODELO
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 10
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem21: TdxLayoutItem
        Parent = GrupoModelo
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Visible = False
        Control = edtModeloEmailÎEMAIL_MODELOÎDESCRICAO
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object GrupoModelo: TdxLayoutGroup
        Parent = GrupoEmailPDF
        CaptionOptions.Text = 'New Group'
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutItem22: TdxLayoutItem
        Parent = GrupoEmailPDF
        CaptionOptions.Visible = False
        Control = cbxEnviarPDF
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 97
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object GrupoEmail: TdxLayoutGroup
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Text = 'New Group'
        Visible = False
        ShowBorder = False
        Index = 2
      end
      object GrupoEmailPDF: TdxLayoutGroup
        Parent = GrupoEmail
        CaptionOptions.Text = 'New Group'
        ShowBorder = False
        Index = 0
      end
    end
  end
  object Acoes: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'Acao'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Quantidade'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 232
    Top = 456
  end
  object DSAcoes: TDataSource
    DataSet = Acoes
    Left = 260
    Top = 456
  end
  object MemUsuarios: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'Ativo'
        DataType = ftBoolean
      end
      item
        Name = 'Usuario'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CodUsuario'
        DataType = ftInteger
      end
      item
        Name = 'CodFuncionario'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 272
    Top = 176
  end
  object DSMemUsuarios: TDataSource
    DataSet = MemUsuarios
    Left = 300
    Top = 176
  end
end
