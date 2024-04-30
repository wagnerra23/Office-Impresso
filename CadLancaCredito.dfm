object FrmLancaCredito: TFrmLancaCredito
  Left = 0
  Top = 0
  Caption = 'FrmLancaCredito'
  ClientHeight = 498
  ClientWidth = 844
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 844
    Height = 498
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    object LbCreditoDisponivel: TcxLabel
      Left = 749
      Top = 457
      Caption = 'R$ 0,00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 8404992
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      Transparent = True
    end
    object LbResponsavel: TcxLabel
      Left = 5
      Top = 19
      Caption = 'CLIENTE TESTE'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 8404992
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object CkCreditoRecebidas: TcxCheckBox
      Left = 5
      Top = 457
      Caption = 'Recebidas'
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
    end
    object LbCreditoRecebidas: TcxLabel
      Left = 79
      Top = 459
      Caption = 'R$ 0,00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object CkCreditoPagas: TcxCheckBox
      Left = 156
      Top = 457
      Caption = 'Pagas'
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 7
      Transparent = True
    end
    object LbCreditoPagas: TcxLabel
      Left = 210
      Top = 459
      Caption = 'R$ 0,00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object CbCreditoStatus: TcxComboBox
      Left = 459
      Top = 457
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'TODOS'
        'ATIVO'
        'INATIVO'
        'ATIVO%'
        'INATIVO%')
      Style.HotTrack = False
      TabOrder = 11
      Text = 'ATIVO%'
      Width = 121
    end
    object GridCredito: TcxGrid
      Left = 5
      Top = 74
      Width = 834
      Height = 382
      PopupMenu = MenuGridCredito
      TabOrder = 4
      object GridCreditoDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DSCredito
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object GridCreditoDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object GridCreditoDBTableView1CODPEDIDO: TcxGridDBColumn
          Caption = 'C'#243'd. Pedido'
          DataBinding.FieldName = 'CODPEDIDO'
          Visible = False
          Width = 75
        end
        object GridCreditoDBTableView1CODEMPRESA: TcxGridDBColumn
          Caption = 'C'#243'd. Empresa'
          DataBinding.FieldName = 'CODEMPRESA'
          Visible = False
          Width = 88
        end
        object GridCreditoDBTableView1EMISSAO: TcxGridDBColumn
          Caption = 'Emiss'#227'o'
          DataBinding.FieldName = 'EMISSAO'
          Width = 119
        end
        object GridCreditoDBTableView1VALOR: TcxGridDBColumn
          Caption = 'R$ Valor'
          DataBinding.FieldName = 'VALOR'
          Width = 102
        end
        object GridCreditoDBTableView1VENCTO: TcxGridDBColumn
          Caption = 'Vencimento'
          DataBinding.FieldName = 'VENCTO'
          Width = 115
        end
        object GridCreditoDBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          Width = 79
        end
        object GridCreditoDBTableView1DOCUMENTO: TcxGridDBColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'DOCUMENTO'
          Width = 87
        end
        object GridCreditoDBTableView1STATUS: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'STATUS'
        end
        object GridCreditoDBTableView1HISTORICO: TcxGridDBColumn
          Caption = 'Hist'#243'rico'
          DataBinding.FieldName = 'HISTORICO'
          Width = 159
        end
        object GridCreditoDBTableView1CODPLANOCONTAS: TcxGridDBColumn
          Caption = 'C'#243'd. Plano de Contas'
          DataBinding.FieldName = 'CODPLANOCONTAS'
          Width = 112
        end
        object GridCreditoDBTableView1PLANOCONTAS: TcxGridDBColumn
          Caption = 'Plano de Contas'
          DataBinding.FieldName = 'PLANOCONTAS'
          Width = 180
        end
        object GridCreditoDBTableView1CODCONTA: TcxGridDBColumn
          Caption = 'C'#243'd. Conta'
          DataBinding.FieldName = 'CODCONTA'
          Visible = False
        end
        object GridCreditoDBTableView1CONTA: TcxGridDBColumn
          Caption = 'Conta'
          DataBinding.FieldName = 'CONTA'
          Width = 152
        end
        object GridCreditoDBTableView1MOTIVO_EXCLUSAO: TcxGridDBColumn
          Caption = 'Motivo Exclus'#227'o'
          DataBinding.FieldName = 'MOTIVO_EXCLUSAO'
          Width = 164
        end
      end
      object GridCreditoLevel1: TcxGridLevel
        GridView = GridCreditoDBTableView1
      end
    end
    object CkCreditoAPagar: TcxCheckBox
      Left = 287
      Top = 457
      Caption = 'A Pagar'
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 9
      Transparent = True
    end
    object LbCreditoAPagar: TcxLabel
      Left = 350
      Top = 459
      Caption = 'R$ 0,00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object btnLancaCredito: TWRButtonFlat
      Left = 5
      Top = 48
      Width = 140
      Height = 25
      Caption = 'Lan'#231'ar Cr'#233'dito'
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      OptionsImage.ImageIndex = 0
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
    object btnCancelarCredito: TWRButtonFlat
      Left = 146
      Top = 48
      Width = 140
      Height = 25
      Action = ActCancelarCredito
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
    object Image1: TImage
      Left = 807
      Top = 5
      Width = 32
      Height = 32
      Cursor = crHandPoint
      Hint = 'Atualizar valor de cr'#233'dito dispon'#237'vel'
      AutoSize = True
      ParentShowHint = False
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
        000000200806000000737A7AF40000001974455874536F667477617265004164
        6F626520496D616765526561647971C9653C00000027744558745469746C6500
        526566726573683B5265706561743B426172733B526962626F6E3B52656C6F61
        64CD4DF6E90000014C49444154785EED96314AC44018852D766DB6132C245B58
        18C809B44B4E305749699B208847706F3007B0F100DBA54E95C2C22B6CFFFB16
        06098FC9CEFC132108293E16927DBC8F4926FF5C89C8A2A802ABC02A605E3E0B
        50030B7A7072F4C0BA7B855E205C9C81160C40020CEEBF59AA00973F820F201A
        5CA6D40A70F9993BF0052481634822546EDCEFFD48A2030DA8C08DA372D7BA89
        95C852040C10927805F9854C0E0E1E89365AE0D9BE6F46E54212DB889DB2F348
        0C53BB83CB6F47E58C516CD7DCF338EAA00095CF9568286B7D1945B94E02998A
        72BD2FA32D6709CAAB31149E2BA1CF4F2D5F4F812ABCECFAC77849C052A00994
        AB5FE490404DA10EE47F2061CE5B3D46A0F04CBE03D845945F835F092ADF6866
        410B8425223EC56FE081244CCA2CC8780C2B86D13749248FE3121C816871127B
        30FB4052CE38903C2D7A24FB3787D245590556811FFFE4F2FAE6AD1015000000
        0049454E44AE426082}
      ShowHint = True
    end
    object btnVisualizarPedido: TWRButtonFlat
      Left = 287
      Top = 48
      Width = 140
      Height = 25
      Action = ActVisualizarPedido
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Offsets.Bottom = 5
      Offsets.Left = 5
      Offsets.Right = 5
      Offsets.Top = 5
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahRight
      CaptionOptions.Text = 'Cr'#233'dito dispon'#237'vel:'
      Control = LbCreditoDisponivel
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Cr'#233'dito da pessoa'
      CaptionOptions.Layout = clTop
      Control = LbResponsavel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = CkCreditoRecebidas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 73
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = LbCreditoRecebidas
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Offsets.Left = 30
      Control = CkCreditoPagas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = LbCreditoPagas
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Status'
      Offsets.Left = 30
      Control = CbCreditoStatus
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      Control = GridCredito
      ControlOptions.OriginalHeight = 62
      ControlOptions.OriginalWidth = 188
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 5
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Visible = False
      Offsets.Left = 30
      Control = CkCreditoAPagar
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 62
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = LbCreditoAPagar
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnLancaCredito
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnCancelarCredito
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      Control = Image1
      ControlOptions.OriginalHeight = 32
      ControlOptions.OriginalWidth = 32
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnVisualizarPedido
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object PnlAdicionarCredito: TPanel
    Left = 58
    Top = 124
    Width = 638
    Height = 253
    Caption = 'Lan'#231'amento de Cr'#233'dito'
    TabOrder = 1
    Visible = False
    object dxLayoutControl2: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 636
      Height = 251
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object EdtCreditoValor: TcxCurrencyEdit
        Left = 5
        Top = 37
        EditValue = 0.000000000000000000
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 121
      end
      object BtnCreditoCancelar: TcxButton
        Left = 195
        Top = 221
        Width = 120
        Height = 25
        Caption = 'Cancelar'
        ModalResult = 2
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = FrmPrincipal.ImgListBotoes16
        TabOrder = 8
      end
      object BtnCreditoConfirmar: TcxButton
        Left = 321
        Top = 221
        Width = 120
        Height = 24
        Caption = 'Confirmar'
        OptionsImage.ImageIndex = 1
        OptionsImage.Images = FrmPrincipal.ImgListBotoes16
        TabOrder = 9
      end
      object EdtCrediarioPlanoContasÎPlanoContas: TcxButtonEdit
        Left = 127
        Top = 37
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Style.HotTrack = False
        TabOrder = 3
        Width = 98
      end
      object LblCrediarioPlanoContasÎPlanoContasÎDESCRICAO: TcxLabel
        Left = 226
        Top = 36
        AutoSize = False
        ParentColor = False
        Style.HotTrack = False
        Height = 22
        Width = 405
      end
      object cxLabel1: TcxLabel
        Left = 5
        Top = 5
        Caption = 'Informe o valor do cr'#233'dito a ser lan'#231'ado'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
      end
      object EdtContaÎContas: TcxButtonEdit
        Left = 127
        Top = 73
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Style.HotTrack = False
        TabOrder = 5
        Width = 98
      end
      object LblContaÎContasÎDESCRICAO: TcxLabel
        Left = 226
        Top = 72
        AutoSize = False
        ParentColor = False
        Style.HotTrack = False
        Height = 22
        Width = 283
      end
      object edtDocumento: TcxTextEdit
        Left = 5
        Top = 73
        Style.HotTrack = False
        TabOrder = 2
        Width = 121
      end
      object edtHistorico: TcxTextEdit
        Left = 5
        Top = 109
        Style.HotTrack = False
        TabOrder = 10
        Width = 626
      end
      object edtCodigo: TcxTextEdit
        Left = 5
        Top = 131
        Style.HotTrack = False
        TabOrder = 11
        Width = 626
      end
      object chkLancaNoFinanceiroRecebida: TcxCheckBox
        Left = 5
        Top = 153
        Hint = 'Se marcar isso aqui fica s'#243' o cr'#233'dito do Cliente'
        Caption = 'Lan'#231'a no Financeiro/Caixa como recebida'
        State = cbsChecked
        Style.HotTrack = False
        TabOrder = 12
        Transparent = True
      end
      object cbTipoPagamento: TcxComboBox
        Left = 510
        Top = 73
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 20
        Properties.Items.Strings = (
          'DINHEIRO'
          'CHEQUE'
          'CHEQUE-PR'#201
          'DEP'#211'SITO'
          'BOLETO'
          'CART'#195'O DE CR'#201'DITO'
          'CART'#195'O DE D'#201'BITO'
          'CREDI'#193'RIO'
          'NOTA SIMPLES'
          'NOTA PROMISS'#211'RIA'
          'PERMUTA'
          'CR'#201'DITO'
          'DEP.RETORNO'
          'DUPLICATA'
          'TRANSFERENCIA'
          'NOTA FISCAL'
          'RECIBO SIMPLES'
          'RECIBO CONTABIL'
          'DEBITO EM CONTA'
          '<-- Preenchido em RunTime -->')
        Style.HotTrack = False
        TabOrder = 7
        Width = 121
      end
      object dxLayoutControl2Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Offsets.Bottom = 5
        Offsets.Left = 5
        Offsets.Right = 5
        Offsets.Top = 5
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControl2Item1: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        CaptionOptions.Text = 'Valor'
        CaptionOptions.Layout = clTop
        Control = EdtCreditoValor
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 87
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl2Item3: TdxLayoutItem
        Parent = dxLayoutControl2Group2
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = BtnCreditoCancelar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 120
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl2Item4: TdxLayoutItem
        Parent = dxLayoutControl2Group2
        CaptionOptions.Text = 'cxButton2'
        CaptionOptions.Visible = False
        Offsets.Left = 5
        Control = BtnCreditoConfirmar
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 120
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl2Group2: TdxLayoutGroup
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahCenter
        AlignVert = avBottom
        CaptionOptions.Text = 'Hidden Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 3
      end
      object dxLayoutControl2Item7: TdxLayoutItem
        Parent = dxLayoutGroup2
        CaptionOptions.Text = 'Plano de Contas'
        CaptionOptions.Layout = clTop
        Control = EdtCrediarioPlanoContasÎPlanoContas
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 98
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl2Item8: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Text = 'cxLabel2'
        CaptionOptions.Visible = False
        Control = LblCrediarioPlanoContasÎPlanoContasÎDESCRICAO
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 226
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl2Group3: TdxLayoutGroup
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Text = 'Hidden Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutSeparatorItem3: TdxLayoutSeparatorItem
        Parent = dxLayoutControl2Group_Root
        AlignVert = avBottom
        CaptionOptions.Text = 'Separator'
        Index = 2
      end
      object dxLayoutItem13: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Text = 'cxLabel1'
        CaptionOptions.Visible = False
        Control = cxLabel1
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 46
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem16: TdxLayoutItem
        Parent = dxLayoutGroup3
        CaptionOptions.Text = 'Conta'
        CaptionOptions.Layout = clTop
        Control = EdtContaÎContas
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 98
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem17: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Visible = False
        Control = LblContaÎContasÎDESCRICAO
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 7
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutGroup2: TdxLayoutGroup
        Parent = dxLayoutGroup4
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup3: TdxLayoutGroup
        Parent = dxLayoutGroup4
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 2
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutGroup4: TdxLayoutGroup
        Parent = dxLayoutControl2Group3
        AlignHorz = ahClient
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        ShowBorder = False
        Index = 1
      end
      object liedtDocumento: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahLeft
        AlignVert = avBottom
        CaptionOptions.Text = 'Documento'
        CaptionOptions.Layout = clTop
        Control = edtDocumento
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl2Group3
        Index = 0
      end
      object liedtHistorico: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Text = 'Hist'#243'rico'
        CaptionOptions.Layout = clTop
        Control = edtHistorico
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object liedtCodigo: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        Visible = False
        Control = edtCodigo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object dxLayoutItem18: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = 'N'#227'o gerar o Contas a Receber'
        CaptionOptions.Visible = False
        Control = chkLancaNoFinanceiroRecebida
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 222
        ControlOptions.ShowBorder = False
        Index = 6
      end
      object dxLayoutItem20: TdxLayoutItem
        Parent = dxLayoutGroup3
        CaptionOptions.Text = 'Tipo de Pagamento'
        CaptionOptions.Layout = clTop
        Control = cbTipoPagamento
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 208
    Top = 264
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
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
  end
  object Credito: TFDQuery
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'select F.CODIGO, F.CODPEDIDO, F.CODEMPRESA, F.VALOR, F.EMISSAO, ' +
        'F.DOCUMENTO,'
      
        '       F.HISTORICO, F.VENCTO, F.CODPLANOCONTAS, F.TIPO, F.CODCON' +
        'TA, F.STATUS,'
      
        '       F.MOTIVO_EXCLUSAO, C.DESCRICAO as CONTA, PC.DESCRICAO as ' +
        'PLANOCONTAS'
      'from FINANCEIRO F'
      'left join CONTAS C on (C.CODIGO = F.CODCONTA)'
      'left join PLANOCONTAS PC on (PC.CODIGO = F.CODPLANOCONTAS)'
      'where ((F.PESSOA_RESPONSAVEL_CODIGO = :CodPessoa)'
      '      and (F.TIPOPAGTO = '#39'CR'#201'DITO'#39'))'
      '      or (F.TEM_CREDITO = '#39'S'#39')')
    Left = 152
    Top = 264
    ParamData = <
      item
        Name = 'CODPESSOA'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
  object DSCredito: TDataSource
    DataSet = Credito
    Left = 180
    Top = 264
  end
  object MenuGridCredito: TPopupMenu
    Left = 236
    Top = 264
    object LanarCrdito1: TMenuItem
      Action = ActLancarCredito
    end
    object CancelarCrdito1: TMenuItem
      Action = ActCancelarCredito
    end
    object VisualizarPedido1: TMenuItem
      Action = ActVisualizarPedido
    end
  end
  object ActionList1: TActionList
    Images = cxImageList1
    Left = 264
    Top = 264
    object ActCancelarCredito: TAction
      Caption = 'Cancelar Cr'#233'dito'
      ImageIndex = 1
    end
    object ActVisualizarPedido: TAction
      Caption = 'Visualizar Pedido'
      ImageIndex = 2
    end
    object ActLancarCredito: TAction
      Caption = 'Lan'#231'ar Cr'#233'dito'
      ImageIndex = 0
    end
    object Action1: TAction
      Caption = 'Action1'
    end
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 17301796
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          000000000000000000000000000000000000000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000EDE0D2FFB8824DFFEDE0D2FFFFFFFFFF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFEDE0D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000EDE0D2FFB8824DFFB8824DFFB8824DFFC89E76FFBA8652FFC89E76FFE0C8
          B1FFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000FFFFFFFFEDE0D2FFB8824DFFC69A70FFE1C8B2FFFAF6F2FFE1C8B2FFC69A
          70FFE0C8B1FFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFC89E76FFE1C8B2FFFFFFFFFFFFFFFFFFFFFFFFFFE1C8
          B2FFC89E76FFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFBA8652FFFAF6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFAF6
          F2FFBA8652FFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFC89E76FFE1C8B2FFFFFFFFFFFFFFFFFFFFFFFFFFE1C8
          B2FFC89E76FFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFE0C8B1FFC69A70FFE1C8B2FFFAF6F2FFE1C8B2FFC69A
          70FFE0C8B1FFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFE0C8B1FFC89E76FFBA8652FFC89E76FFE0C8
          B1FFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
          83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
end
