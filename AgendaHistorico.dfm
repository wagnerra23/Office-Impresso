inherited FrmAgendaHistorico: TFrmAgendaHistorico
  Caption = 'HIST'#211'RICO - AGENDA'
  ClientHeight = 723
  ClientWidth = 971
  ExplicitWidth = 971
  ExplicitHeight = 723
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 971
    Height = 682
    ExplicitWidth = 971
    ExplicitHeight = 682
    inherited Gradient3: TGradient
      Left = 580
      Width = 389
      Height = 634
      ExplicitLeft = 580
      ExplicitWidth = 221
      ExplicitHeight = 675
    end
    object SpeedButton2: TSpeedButton [1]
      Left = 486
      Top = 43
      Width = 56
      Height = 24
      Hint = 
        'Precione a tecla F1 ou aperte no bot'#227'o para efetuar a sub-consul' +
        'ta.'
      Caption = ' - F1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF044906055B09066C0C066C0C055E0A044C06FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05600905600908911309B01809
        B31A09B31909B11907961405680C05680CFF00FFFF00FFFF00FFFF00FFFF00FF
        0A6A150A7F150BB61C09B91A08B41807B21609B31909B41909B81A09B91A0783
        10044D06FF00FFFF00FFFF00FF0B6A150F852216BD3411B7270BB21C07B11608
        B11709B21909B21909B21909B41909BA1A07841006670CFF00FFFF00FF0B6A15
        20BE491BBD4014B7300AB21F63CE6DEEFAEFDFF5E128BC3609B21909B21909B3
        1909BA1A06670CFF00FF0872101B9A3A2AC65B1DBB450EB4255BCC66F7FDF8FF
        FFFF9ADFA011B42009B21909B21909B21909B81A089413045D090872102AB65B
        2CC56522BD4D5CCC69F6FCF7FDFEFD8EDB9509B21A09B21909B21909B21909B2
        1909B51A08AB17045D090F821C37C26C33C76C8ADDA8F4FCF6FFFFFFF9FDFAC7
        EED2C4EDCCBFEBC3BFEBC3C0EBC4C2ECC608B41909B31905650B138D2358CC83
        42C977C9EFD8FFFFFFFFFFFFFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF0AB41A09B319066D0D0F911D6FD2935FD38D44C977B7EACBFFFFFFFBFEFC9A
        E2B458CD795CCE765CCD765CCD735BCD7211B82B08B11905610A0F911D67CC83
        9BE5BA38C67032C36AAAE6C1FFFFFFE9F9EF6AD38E21BD4D1EBC491EBC471AB9
        3E10BA2908A31705610AFF00FF37B650BCEDD282DBA428C06331C268A4E4BDFF
        FFFFF7FDF945C86E20BB4A1DBA4118B73614C0300A8517FF00FFFF00FF37B650
        71D28CD2F4E180DAA336C46D31C36AAAE6C1BDECCF35C46924BE5623BC4D1FC1
        4616AE340A8517FF00FFFF00FFFF00FF25AE3984D89FDBF7EAAFE8C66BD49352
        CC8144C97849CA7B48CB7839CB6A21B6490F7C1FFF00FFFF00FFFF00FFFF00FF
        FF00FF66CD8166CD81ADE8C5CCF2DEBAEDD1A6E7C291E2B364D4922FB1572FB1
        57FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32B74E52C46F61
        CB805DC87D43B96424A342FF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentFont = False
      Spacing = 0
      OnClick = SpeedButton2Click
    end
    inherited Gradient1: TGradient
      Width = 967
      ExplicitWidth = 967
    end
    inherited Label3: TLabel
      Left = 121
      Top = 34
      ExplicitLeft = 121
      ExplicitTop = 34
    end
    inherited Edit1: TEdit
      Left = 122
      Top = 48
      Width = 358
      ExplicitLeft = 122
      ExplicitTop = 48
      ExplicitWidth = 358
    end
    inherited cxGrid1: TcxGrid
      Left = 580
      Top = 25
      Width = 389
      Height = 634
      Align = alClient
      ExplicitLeft = 580
      ExplicitTop = 25
      ExplicitWidth = 389
      ExplicitHeight = 634
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1USUARIO: TcxGridDBColumn
          DataBinding.FieldName = 'USUARIO'
          Width = 100
        end
        object cxGrid1DBTableView1DT_ALTERACAO: TcxGridDBColumn
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 109
        end
        object cxGrid1DBTableView1CODCLIENTE: TcxGridDBColumn
          DataBinding.FieldName = 'CODCLIENTE'
          Width = 60
        end
        object cxGrid1DBTableView1CAPTION: TcxGridDBColumn
          DataBinding.FieldName = 'CAPTION'
          Width = 311
        end
      end
    end
    inherited cxButtonFechar: TcxButton
      Left = -832
      Anchors = [akTop, akRight]
      ExplicitLeft = -832
    end
    inherited NetGradient1: TcxLabel
      Caption = 'HIST'#211'RICO - AGENDA'
      ExplicitWidth = 221
    end
    inherited StatusBar: TStatusBar
      Top = 659
      Width = 967
      ExplicitTop = 659
      ExplicitWidth = 967
    end
    object Panel2: TPanel
      Left = 2
      Top = 25
      Width = 578
      Height = 634
      Align = alLeft
      Caption = 'Panel2'
      TabOrder = 5
      object Nome_Medico: TLabel
        Left = 256
        Top = 288
        Width = 3
        Height = 13
      end
      object pnlButtons: TPanel
        Left = 1
        Top = 595
        Width = 576
        Height = 38
        Align = alBottom
        BevelOuter = bvNone
        FullRepaint = False
        ParentColor = True
        TabOrder = 0
        object pnlThreeButtons: TPanel
          Left = 0
          Top = 0
          Width = 297
          Height = 38
          Align = alClient
          BevelOuter = bvNone
          FullRepaint = False
          ParentColor = True
          TabOrder = 0
          DesignSize = (
            297
            38)
          object btnOk: TcxButton
            Left = 8
            Top = 7
            Width = 90
            Height = 23
            Anchors = [akTop, akRight]
            Caption = 'OK'
            ModalResult = 1
            TabOrder = 0
          end
          object btnCancel: TcxButton
            Left = 100
            Top = 7
            Width = 90
            Height = 23
            Anchors = [akTop, akRight]
            Caption = 'Cancel'
            ModalResult = 2
            TabOrder = 1
          end
          object btnDelete: TcxButton
            Left = 192
            Top = 7
            Width = 90
            Height = 23
            Anchors = [akTop, akRight]
            Caption = '&Delete'
            TabOrder = 2
          end
        end
        object pnlRecurrence: TPanel
          Left = 297
          Top = 0
          Width = 93
          Height = 38
          Align = alRight
          BevelOuter = bvNone
          FullRepaint = False
          ParentColor = True
          TabOrder = 1
          object btnRecurrence: TcxButton
            Left = 1
            Top = 7
            Width = 90
            Height = 23
            Caption = '&Recurrence'
            TabOrder = 0
          end
        end
        object Panel3: TPanel
          Left = 390
          Top = 0
          Width = 186
          Height = 38
          Align = alRight
          BevelOuter = bvNone
          FullRepaint = False
          ParentColor = True
          TabOrder = 2
          object btnFaturar_Cancela: TcxButton
            Left = 92
            Top = 7
            Width = 90
            Height = 23
            Caption = '&Cancelar Fatura'
            Colors.Default = 16776176
            TabOrder = 1
          end
          object cxButton1: TcxButton
            Left = 0
            Top = 7
            Width = 90
            Height = 23
            Caption = '&Laudo'
            Colors.Default = clInfoBk
            TabOrder = 2
          end
          object btnFaturar: TcxButton
            Left = 92
            Top = 7
            Width = 90
            Height = 23
            Caption = '&Faturar'
            Colors.Default = clMoneyGreen
            TabOrder = 0
          end
        end
      end
      object pnlInformation: TPanel
        Left = 1
        Top = 1
        Width = 576
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        FullRepaint = False
        ParentColor = True
        TabOrder = 1
        DesignSize = (
          576
          41)
        object Bevel6: TBevel
          Left = 11
          Top = 33
          Width = 541
          Height = 7
          Anchors = [akLeft, akTop, akRight]
          Shape = bsBottomLine
          ExplicitWidth = 579
        end
        object LbDVD: TLabel
          Left = 424
          Top = 16
          Width = 3
          Height = 13
        end
        object btnFindTime: TcxButton
          Left = 432
          Top = 8
          Width = 120
          Height = 23
          Anchors = [akTop, akRight]
          Caption = 'Find available time'
          TabOrder = 0
        end
        object cxGroupBox1: TcxGroupBox
          Left = 13
          Top = 8
          Alignment = alCenterCenter
          Anchors = [akLeft, akTop, akRight]
          ParentBackground = False
          ParentColor = False
          Style.Color = clInfoBk
          Style.TransparentBorder = False
          TabOrder = 1
          Height = 23
          Width = 410
          object lbInformation: TLabel
            Left = 3
            Top = 4
            Width = 290
            Height = 15
            AutoSize = False
            Caption = 'Conflicts with another event in your schedule.'
          end
        end
      end
      object pnlCaption: TPanel
        Left = 1
        Top = 42
        Width = 576
        Height = 52
        Align = alTop
        BevelOuter = bvNone
        FullRepaint = False
        ParentColor = True
        TabOrder = 2
        DesignSize = (
          576
          52)
        object lbSubject: TLabel
          Left = 11
          Top = 13
          Width = 39
          Height = 13
          Caption = 'Subject:'
          FocusControl = teSubject
        end
        object lbLocation: TLabel
          Left = 11
          Top = 33
          Width = 44
          Height = 13
          Caption = 'Location:'
          FocusControl = teLocation
        end
        object lbLabel: TLabel
          Left = 380
          Top = 33
          Width = 29
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'La&bel:'
          FocusControl = icbLabel
          ExplicitLeft = 383
        end
        object SpeedButton1: TSpeedButton
          Left = 496
          Top = 4
          Width = 56
          Height = 24
          Hint = 
            'Precione a tecla F1 ou aperte no bot'#227'o para efetuar a sub-consul' +
            'ta.'
          Anchors = [akTop, akRight]
          Caption = ' - F1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF044906055B09066C0C066C0C055E0A044C06FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05600905600908911309B01809
            B31A09B31909B11907961405680C05680CFF00FFFF00FFFF00FFFF00FFFF00FF
            0A6A150A7F150BB61C09B91A08B41807B21609B31909B41909B81A09B91A0783
            10044D06FF00FFFF00FFFF00FF0B6A150F852216BD3411B7270BB21C07B11608
            B11709B21909B21909B21909B41909BA1A07841006670CFF00FFFF00FF0B6A15
            20BE491BBD4014B7300AB21F63CE6DEEFAEFDFF5E128BC3609B21909B21909B3
            1909BA1A06670CFF00FF0872101B9A3A2AC65B1DBB450EB4255BCC66F7FDF8FF
            FFFF9ADFA011B42009B21909B21909B21909B81A089413045D090872102AB65B
            2CC56522BD4D5CCC69F6FCF7FDFEFD8EDB9509B21A09B21909B21909B21909B2
            1909B51A08AB17045D090F821C37C26C33C76C8ADDA8F4FCF6FFFFFFF9FDFAC7
            EED2C4EDCCBFEBC3BFEBC3C0EBC4C2ECC608B41909B31905650B138D2358CC83
            42C977C9EFD8FFFFFFFFFFFFFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF0AB41A09B319066D0D0F911D6FD2935FD38D44C977B7EACBFFFFFFFBFEFC9A
            E2B458CD795CCE765CCD765CCD735BCD7211B82B08B11905610A0F911D67CC83
            9BE5BA38C67032C36AAAE6C1FFFFFFE9F9EF6AD38E21BD4D1EBC491EBC471AB9
            3E10BA2908A31705610AFF00FF37B650BCEDD282DBA428C06331C268A4E4BDFF
            FFFFF7FDF945C86E20BB4A1DBA4118B73614C0300A8517FF00FFFF00FF37B650
            71D28CD2F4E180DAA336C46D31C36AAAE6C1BDECCF35C46924BE5623BC4D1FC1
            4616AE340A8517FF00FFFF00FFFF00FF25AE3984D89FDBF7EAAFE8C66BD49352
            CC8144C97849CA7B48CB7839CB6A21B6490F7C1FFF00FFFF00FFFF00FFFF00FF
            FF00FF66CD8166CD81ADE8C5CCF2DEBAEDD1A6E7C291E2B364D4922FB1572FB1
            57FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32B74E52C46F61
            CB805DC87D43B96424A342FF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentFont = False
          Spacing = 0
          ExplicitLeft = 498
        end
        object cxButtonEdit1: TcxDBButtonEdit
          Left = 72
          Top = 7
          DataBinding.DataField = 'CODCLIENTE'
          DataBinding.DataSource = DS
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 113
          Properties.MaxLength = 0
          TabOrder = 0
          Width = 58
        end
        object teSubject: TcxDBTextEdit
          Left = 131
          Top = 7
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'CAPTION'
          DataBinding.DataSource = DS
          TabOrder = 1
          Width = 359
        end
        object teLocation: TcxDBTextEdit
          Left = 72
          Top = 29
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'LOCATION'
          DataBinding.DataSource = DS
          TabOrder = 2
          Width = 299
        end
        object icbLabel: TcxDBComboBox
          Left = 415
          Top = 29
          Anchors = [akTop, akRight]
          DataBinding.DataSource = DS
          TabOrder = 3
          Width = 137
        end
      end
      object pnlTime: TPanel
        Left = 1
        Top = 186
        Width = 576
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        FullRepaint = False
        ParentColor = True
        TabOrder = 3
        DesignSize = (
          576
          50)
        object Bevel4: TBevel
          Left = 11
          Top = -2
          Width = 541
          Height = 10
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
          ExplicitWidth = 543
        end
        object lbStartTime: TLabel
          Left = 16
          Top = 8
          Width = 47
          Height = 13
          Caption = 'Start time:'
          FocusControl = deStart
        end
        object lbEndTime: TLabel
          Left = 16
          Top = 30
          Width = 44
          Height = 13
          Caption = 'End time:'
          FocusControl = deEnd
        end
        object Label5: TLabel
          Left = 465
          Top = 7
          Width = 34
          Height = 13
          Caption = 'Venda:'
        end
        object Label6: TLabel
          Left = 347
          Top = 31
          Width = 62
          Height = 13
          Caption = 'Faturamento:'
        end
        object Label8: TLabel
          Left = 373
          Top = 8
          Width = 39
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Usu'#225'rio:'
          ExplicitLeft = 375
        end
        object Label7: TLabel
          Left = 249
          Top = 30
          Width = 44
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Empresa:'
          ExplicitLeft = 251
        end
        object cbAllDayEvent: TcxCheckBox
          Left = 245
          Top = 4
          Caption = 'All day event'
          ParentColor = False
          TabOrder = 4
          Transparent = True
        end
        object teStart: TcxTimeEdit
          Left = 178
          Top = 4
          Properties.TimeFormat = tfHourMin
          TabOrder = 1
          Width = 64
        end
        object teEnd: TcxTimeEdit
          Left = 178
          Top = 26
          Properties.TimeFormat = tfHourMin
          TabOrder = 3
          Width = 64
        end
        object Edit_CodLaudo: TcxDBTextEdit
          Left = 505
          Top = 4
          TabStop = False
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'CODVENDA'
          DataBinding.DataSource = DS
          Style.Color = clSilver
          TabOrder = 5
          Width = 47
        end
        object Edit_CodFinanceiro: TcxDBTextEdit
          Left = 415
          Top = 26
          TabStop = False
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'CODFINANCEIRO'
          DataBinding.DataSource = DS
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 7
          Width = 44
        end
        object Edit_Usuario: TcxDBTextEdit
          Left = 415
          Top = 4
          TabStop = False
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'CODUSUARIO'
          DataBinding.DataSource = DS
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 8
          Width = 44
        end
        object Edit_CodEmpresa: TcxDBTextEdit
          Left = 299
          Top = 27
          TabStop = False
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'CODEMPRESA'
          DataBinding.DataSource = DS
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 9
          Width = 44
        end
        object deStart: TcxDBComboBox
          Left = 72
          Top = 4
          DataBinding.DataField = 'DT_INICIO'
          DataBinding.DataSource = DS
          TabOrder = 0
          Width = 105
        end
        object deEnd: TcxDBComboBox
          Left = 72
          Top = 26
          DataBinding.DataField = 'DT_FIM'
          DataBinding.DataSource = DS
          TabOrder = 2
          Width = 105
        end
        object DateEdit_Fatura: TcxDBComboBox
          Left = 461
          Top = 26
          TabStop = False
          DataBinding.DataField = 'DT_FATURAMENTO'
          DataBinding.DataSource = DS
          Style.Color = clSilver
          TabOrder = 6
          Width = 91
        end
      end
      object pnlRecurrenceInfo: TPanel
        Left = 1
        Top = 236
        Width = 576
        Height = 40
        Align = alTop
        BevelOuter = bvNone
        FullRepaint = False
        ParentColor = True
        TabOrder = 4
        DesignSize = (
          576
          40)
        object Bevel7: TBevel
          Left = 11
          Top = 0
          Width = 541
          Height = 8
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
          ExplicitWidth = 579
        end
        object lbRecurrence: TLabel
          Left = 16
          Top = 15
          Width = 59
          Height = 13
          Caption = 'Recurrence:'
        end
        object lbRecurrencePattern: TLabel
          Left = 88
          Top = 16
          Width = 465
          Height = 13
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = 'PatternInfo'
          WordWrap = True
          ExplicitWidth = 503
        end
      end
      object pnlPlaceHolder: TPanel
        Left = 1
        Top = 276
        Width = 576
        Height = 43
        Align = alTop
        BevelOuter = bvNone
        FullRepaint = False
        ParentColor = True
        TabOrder = 5
        object pnlReminder: TPanel
          Left = 0
          Top = 4
          Width = 224
          Height = 39
          Align = alLeft
          BevelOuter = bvNone
          FullRepaint = False
          ParentColor = True
          TabOrder = 0
          object cbReminder: TcxCheckBox
            Left = 11
            Top = 9
            Caption = 'Reminder:'
            ParentBackground = False
            ParentColor = False
            State = cbsChecked
            TabOrder = 0
          end
          object cbReminderMinutesBeforeStart: TcxDBComboBox
            Left = 96
            Top = 8
            DataBinding.DataField = 'REMINDER_MINUTES_BEFORE_START'
            DataBinding.DataSource = DS
            Properties.ImmediateDropDownWhenKeyPressed = False
            Properties.ImmediatePost = True
            Properties.IncrementalSearch = False
            TabOrder = 1
            Width = 121
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 576
          Height = 4
          Align = alTop
          BevelOuter = bvNone
          FullRepaint = False
          ParentColor = True
          TabOrder = 1
          DesignSize = (
            576
            4)
          object Bevel3: TBevel
            Left = 11
            Top = 0
            Width = 551
            Height = 4
            Anchors = [akLeft, akTop, akRight]
            Shape = bsTopLine
            ExplicitWidth = 589
          end
        end
        object pnlShowTimeAs: TPanel
          Left = 224
          Top = 4
          Width = 335
          Height = 39
          Align = alLeft
          BevelOuter = bvNone
          FullRepaint = False
          ParentColor = True
          TabOrder = 2
          DesignSize = (
            335
            39)
          object lbShowTimeAs: TLabel
            Left = 126
            Top = 12
            Width = 66
            Height = 13
            Alignment = taRightJustify
            Caption = 'Show time as:'
            FocusControl = icbShowTimeAs
          end
          object cxButton2: TcxButton
            Left = 6
            Top = 7
            Width = 76
            Height = 23
            Anchors = [akTop, akRight]
            Caption = 'Impri.'
            TabOrder = 1
          end
          object icbShowTimeAs: TcxDBComboBox
            Left = 194
            Top = 8
            DataBinding.DataField = 'REMINDER_DATE'
            DataBinding.DataSource = DS
            Style.Color = clSilver
            TabOrder = 0
            Width = 137
          end
        end
      end
      object pnlMessage: TPanel
        Left = 1
        Top = 402
        Width = 576
        Height = 193
        Align = alClient
        BevelOuter = bvNone
        FullRepaint = False
        ParentColor = True
        TabOrder = 6
        DesignSize = (
          576
          193)
        object Bevel2: TBevel
          Left = 12
          Top = -3
          Width = 541
          Height = 9
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
          ExplicitWidth = 579
        end
        object Bevel1: TBevel
          Left = 11
          Top = 161
          Width = 541
          Height = 7
          Anchors = [akLeft, akRight, akBottom]
          Shape = bsBottomLine
          ExplicitTop = 135
          ExplicitWidth = 579
        end
        object AlterarPreco: TLabel
          Left = 256
          Top = 118
          Width = 61
          Height = 13
          Caption = 'Alterar Pre'#231'o'
        end
        object meMessage: TcxDBMemo
          Left = 10
          Top = 2
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataBinding.DataField = 'MENSSAGE'
          DataBinding.DataSource = DS
          TabOrder = 0
          Height = 143
          Width = 543
        end
      end
      object pnlResource: TPanel
        Left = 1
        Top = 319
        Width = 576
        Height = 43
        Align = alTop
        BevelOuter = bvNone
        FullRepaint = False
        ParentColor = True
        TabOrder = 7
        DesignSize = (
          576
          43)
        object lbResource: TLabel
          Left = 16
          Top = 17
          Width = 60
          Height = 13
          Caption = 'Resource(s):'
        end
        object Bevel5: TBevel
          Left = 11
          Top = -4
          Width = 541
          Height = 7
          Anchors = [akLeft, akTop, akRight]
          Shape = bsBottomLine
          ExplicitWidth = 579
        end
        object cbResources: TcxDBComboBox
          Left = 96
          Top = 13
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'OCORRENCIA'
          DataBinding.DataSource = DS
          TabOrder = 0
          Width = 458
        end
      end
      object pnlTaskComplete: TPanel
        Left = 1
        Top = 362
        Width = 576
        Height = 40
        Align = alTop
        BevelOuter = bvNone
        FullRepaint = False
        ParentColor = True
        TabOrder = 8
        DesignSize = (
          576
          40)
        object Bevel8: TBevel
          Left = 11
          Top = 0
          Width = 543
          Height = 8
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
          ExplicitWidth = 546
        end
        object lbTaskComplete: TLabel
          Left = 16
          Top = 15
          Width = 73
          Height = 13
          Caption = 'Task complete:'
          FocusControl = seTaskComplete
        end
        object lbTaskStatus: TLabel
          Left = 357
          Top = 14
          Width = 58
          Height = 13
          Caption = 'Task status:'
          FocusControl = cbxTaskStatus
        end
        object seTaskComplete: TcxSpinEdit
          Left = 96
          Top = 11
          Properties.AssignedValues.EditFormat = True
          Properties.AssignedValues.MinValue = True
          Properties.Increment = 25.000000000000000000
          Properties.LargeIncrement = 25.000000000000000000
          Properties.MaxValue = 100.000000000000000000
          TabOrder = 0
          Width = 121
        end
        object cbxTaskStatus: TcxDBComboBox
          Left = 418
          Top = 11
          DataBinding.DataField = 'TAREFA_STATUS'
          DataBinding.DataSource = DS
          TabOrder = 1
          Width = 137
        end
      end
      object Panel11: TPanel
        Left = 1
        Top = 94
        Width = 576
        Height = 92
        Align = alTop
        BevelOuter = bvNone
        FullRepaint = False
        ParentColor = True
        TabOrder = 9
        DesignSize = (
          576
          92)
        object Label1: TLabel
          Left = 11
          Top = 10
          Width = 52
          Height = 13
          Caption = 'Solicitante:'
        end
        object Bevel9: TBevel
          Left = 11
          Top = -4
          Width = 541
          Height = 7
          Anchors = [akLeft, akTop, akRight]
          Shape = bsBottomLine
          ExplicitWidth = 579
        end
        object Label2: TLabel
          Left = 11
          Top = 34
          Width = 55
          Height = 13
          Caption = 'Solicita'#231#227'o:'
        end
        object Label4: TLabel
          Left = 11
          Top = 54
          Width = 21
          Height = 13
          Caption = 'Faq:'
        end
        object Label9: TLabel
          Left = 433
          Top = 54
          Width = 44
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'R$ Valor:'
          ExplicitLeft = 435
        end
        object Label10: TLabel
          Left = 11
          Top = 75
          Width = 65
          Height = 13
          Caption = 'Equipamento:'
        end
        object cxButtonEdit3: TcxDBButtonEdit
          Left = 72
          Top = 28
          DataBinding.DataField = 'CODPERGUNTA'
          DataBinding.DataSource = DS
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 113
          Properties.MaxLength = 0
          TabOrder = 1
          Width = 58
        end
        object cxButtonEdit4: TcxDBButtonEdit
          Left = 72
          Top = 50
          DataBinding.DataField = 'CODAGENDA_FAQ'
          DataBinding.DataSource = DS
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 113
          Properties.MaxLength = 0
          TabOrder = 3
          Width = 58
        end
        object cxButtonEdit5: TcxDBButtonEdit
          Left = 72
          Top = 72
          DataBinding.DataField = 'CODEQUIPAMENTO'
          DataBinding.DataSource = DS
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 113
          Properties.MaxLength = 0
          TabOrder = 6
          Width = 58
        end
        object Edit_Medico: TcxDBTextEdit
          Left = 72
          Top = 6
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'SOLICITANTE'
          DataBinding.DataSource = DS
          TabOrder = 0
          Width = 480
        end
        object Edit_Convenio: TcxDBTextEdit
          Left = 131
          Top = 28
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'PERGUNTA'
          DataBinding.DataSource = DS
          TabOrder = 2
          Width = 421
        end
        object Edit_Exame: TcxDBTextEdit
          Left = 131
          Top = 50
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'AGENDA_FAQ'
          DataBinding.DataSource = DS
          TabOrder = 4
          Width = 300
        end
        object cxTextEdit1: TcxDBTextEdit
          Left = 131
          Top = 72
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'EQUIPAMENTO'
          DataBinding.DataSource = DS
          TabOrder = 7
          Width = 421
        end
        object cxCurrencyEdit_Valor: TcxDBTextEdit
          Left = 482
          Top = 50
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'VALOR'
          DataBinding.DataSource = DS
          Style.Color = clSilver
          TabOrder = 5
          Width = 70
        end
      end
    end
  end
  inherited PnlCRM: TPanel
    Width = 971
    ExplicitWidth = 971
    inherited GradientCRM: TGradient
      Width = 971
      ExplicitWidth = 971
    end
    inherited BtnCRMNovoConfirmar: TcxButton
      Left = -158
      ExplicitLeft = -158
    end
    inherited BtnCRMAlterarCancelar: TcxButton
      Left = -82
      ExplicitLeft = -82
    end
  end
  inherited BtnCRM: TcxButton
    Left = -29
    ExplicitLeft = -29
  end
  inherited DS: TDataSource
    DataSet = Agenda_Historico
    Left = 623
    Top = 153
  end
  inherited Timer1: TTimer
    Left = 651
    Top = 153
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 679
    Top = 153
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 41299.498801435170000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited PopupMenu_Imprimir: TPopupMenu
    Left = 707
    Top = 153
  end
  inherited Transa: TIBTransaction
    Active = True
    DefaultDatabase = FrmPrincipal.CONECTAR
    Left = 735
    Top = 153
  end
  object Agenda_Historico: TIBDataSet
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from AGENDA_HISTORICO'
      'where'
      '  CODAGENDA = :OLD_CODAGENDA and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into AGENDA_HISTORICO'
      
        '  (AGENDA_FAQ, CAPTION, CODAGENDA, CODAGENDA_FAQ, CODAGENDA_TITU' +
        'LO, CODEMPRESA, '
      
        '   CODEQUIPAMENTO, CODFINANCEIRO, CODIGO, CODUSUARIO, CODVENDA, ' +
        'COLOR, '
      
        '   DT_ALTERACAO, DT_FATURAMENTO, DT_FIM, DT_INICIO, EQUIPAMENTO,' +
        ' EVENTO_TIPO, '
      
        '   FUNCIONARIO, H_MAXIMO, H_MINIMO, IMAGE, IMAGEMINDEX, LOCATION' +
        ', MENSSAGE, '
      
        '   OCORRENCIA, OPTIONS, PARENTID, PESSOA_CLIENTE_CODIGO, PESSOA_' +
        'CLIENTE_SEQUENCIA, '
      
        '   PESSOA_CLIENTE_TIPO, PESSOA_FUNCIONARIO_CODIGO, PESSOA_FUNCIO' +
        'NARIO_SEQUENCIA, '
      
        '   PESSOA_FUNCIONARIO_TIPO, RECURRENCE_INDEX, RECURRENCE_INFO, R' +
        'EMINDER_DATE, '
      
        '   REMINDER_MINUTES_BEFORE_START, REMINDER_RESOURCES_DATA, SOLIC' +
        'ITANTE, '
      
        '   STATUS, TAREFA_COMPLETA, TAREFA_INDEX, TAREFA_LINK, TAREFA_ST' +
        'ATUS, TELEFONE, '
      '   VALOR)'
      'values'
      
        '  (:AGENDA_FAQ, :CAPTION, :CODAGENDA, :CODAGENDA_FAQ, :CODAGENDA' +
        '_TITULO, '
      
        '   :CODEMPRESA, :CODEQUIPAMENTO, :CODFINANCEIRO, :CODIGO, :CODUS' +
        'UARIO, '
      
        '   :CODVENDA, :COLOR, :DT_ALTERACAO, :DT_FATURAMENTO, :DT_FIM, :' +
        'DT_INICIO, '
      
        '   :EQUIPAMENTO, :EVENTO_TIPO, :FUNCIONARIO, :H_MAXIMO, :H_MINIM' +
        'O, :IMAGE, '
      
        '   :IMAGEMINDEX, :LOCATION, :MENSSAGE, :OCORRENCIA, :OPTIONS, :P' +
        'ARENTID, '
      
        '   :PESSOA_CLIENTE_CODIGO, :PESSOA_CLIENTE_SEQUENCIA, :PESSOA_CL' +
        'IENTE_TIPO, '
      
        '   :PESSOA_FUNCIONARIO_CODIGO, :PESSOA_FUNCIONARIO_SEQUENCIA, :P' +
        'ESSOA_FUNCIONARIO_TIPO, '
      
        '   :RECURRENCE_INDEX, :RECURRENCE_INFO, :REMINDER_DATE, :REMINDE' +
        'R_MINUTES_BEFORE_START, '
      
        '   :REMINDER_RESOURCES_DATA, :SOLICITANTE, :STATUS, :TAREFA_COMP' +
        'LETA, :TAREFA_INDEX, '
      '   :TAREFA_LINK, :TAREFA_STATUS, :TELEFONE, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  CODAGENDA,'
      '  PARENTID,'
      '  CODAGENDA_TITULO,'
      '  CAPTION,'
      '  DT_INICIO,'
      '  DT_FIM,'
      '  H_MINIMO,'
      '  H_MAXIMO,'
      '  IMAGEMINDEX,'
      '  COLOR,'
      '  IMAGE,'
      '  TAREFA_COMPLETA,'
      '  TAREFA_INDEX,'
      '  STATUS,'
      '  EVENTO_TIPO,'
      '  RECURRENCE_INDEX,'
      '  REMINDER_DATE,'
      '  REMINDER_MINUTES_BEFORE_START,'
      '  REMINDER_RESOURCES_DATA,'
      '  OPTIONS,'
      '  MENSSAGE,'
      '  LOCATION,'
      '  RECURRENCE_INFO,'
      '  TELEFONE,'
      '  TAREFA_STATUS,'
      '  TAREFA_LINK,'
      '  VALOR,'
      '  CODFINANCEIRO,'
      '  CODEMPRESA,'
      '  CODUSUARIO,'
      '  DT_FATURAMENTO,'
      '  DT_ALTERACAO,'
      '  FUNCIONARIO,'
      '  CODAGENDA_FAQ,'
      '  AGENDA_FAQ,'
      '  CODEQUIPAMENTO,'
      '  EQUIPAMENTO,'
      '  SOLICITANTE,'
      '  CODVENDA,'
      '  OCORRENCIA,'
      '  PESSOA_CLIENTE_CODIGO,'
      '  PESSOA_CLIENTE_TIPO,'
      '  PESSOA_CLIENTE_SEQUENCIA,'
      '  PESSOA_FUNCIONARIO_CODIGO,'
      '  PESSOA_FUNCIONARIO_TIPO,'
      '  PESSOA_FUNCIONARIO_SEQUENCIA'
      'from AGENDA_HISTORICO '
      'where'
      '  CODAGENDA = :CODAGENDA and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select A.*,U.USUARIO from AGENDA_HISTORICO A'
      'Left Join USUARIO U ON A.CODUSUARIO = U.CODIGO'
      ''
      'ORDER BY DT_ALTERACAO,A.CAPTION,A.DT_INICIO'
      '')
    ModifySQL.Strings = (
      'update AGENDA_HISTORICO'
      'set'
      '  AGENDA_FAQ = :AGENDA_FAQ,'
      '  CAPTION = :CAPTION,'
      '  CODAGENDA = :CODAGENDA,'
      '  CODAGENDA_FAQ = :CODAGENDA_FAQ,'
      '  CODAGENDA_TITULO = :CODAGENDA_TITULO,'
      '  CODEMPRESA = :CODEMPRESA,'
      '  CODEQUIPAMENTO = :CODEQUIPAMENTO,'
      '  CODFINANCEIRO = :CODFINANCEIRO,'
      '  CODIGO = :CODIGO,'
      '  CODUSUARIO = :CODUSUARIO,'
      '  CODVENDA = :CODVENDA,'
      '  COLOR = :COLOR,'
      '  DT_ALTERACAO = :DT_ALTERACAO,'
      '  DT_FATURAMENTO = :DT_FATURAMENTO,'
      '  DT_FIM = :DT_FIM,'
      '  DT_INICIO = :DT_INICIO,'
      '  EQUIPAMENTO = :EQUIPAMENTO,'
      '  EVENTO_TIPO = :EVENTO_TIPO,'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  H_MAXIMO = :H_MAXIMO,'
      '  H_MINIMO = :H_MINIMO,'
      '  IMAGE = :IMAGE,'
      '  IMAGEMINDEX = :IMAGEMINDEX,'
      '  LOCATION = :LOCATION,'
      '  MENSSAGE = :MENSSAGE,'
      '  OCORRENCIA = :OCORRENCIA,'
      '  OPTIONS = :OPTIONS,'
      '  PARENTID = :PARENTID,'
      '  PESSOA_CLIENTE_CODIGO = :PESSOA_CLIENTE_CODIGO,'
      '  PESSOA_CLIENTE_SEQUENCIA = :PESSOA_CLIENTE_SEQUENCIA,'
      '  PESSOA_CLIENTE_TIPO = :PESSOA_CLIENTE_TIPO,'
      '  PESSOA_FUNCIONARIO_CODIGO = :PESSOA_FUNCIONARIO_CODIGO,'
      '  PESSOA_FUNCIONARIO_SEQUENCIA = :PESSOA_FUNCIONARIO_SEQUENCIA,'
      '  PESSOA_FUNCIONARIO_TIPO = :PESSOA_FUNCIONARIO_TIPO,'
      '  RECURRENCE_INDEX = :RECURRENCE_INDEX,'
      '  RECURRENCE_INFO = :RECURRENCE_INFO,'
      '  REMINDER_DATE = :REMINDER_DATE,'
      
        '  REMINDER_MINUTES_BEFORE_START = :REMINDER_MINUTES_BEFORE_START' +
        ','
      '  REMINDER_RESOURCES_DATA = :REMINDER_RESOURCES_DATA,'
      '  SOLICITANTE = :SOLICITANTE,'
      '  STATUS = :STATUS,'
      '  TAREFA_COMPLETA = :TAREFA_COMPLETA,'
      '  TAREFA_INDEX = :TAREFA_INDEX,'
      '  TAREFA_LINK = :TAREFA_LINK,'
      '  TAREFA_STATUS = :TAREFA_STATUS,'
      '  TELEFONE = :TELEFONE,'
      '  VALOR = :VALOR'
      'where'
      '  CODAGENDA = :OLD_CODAGENDA and'
      '  CODIGO = :OLD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Active = True
    Left = 595
    Top = 153
    object Agenda_HistoricoCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"AGENDA_HISTORICO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object Agenda_HistoricoPARENTID: TBlobField
      FieldName = 'PARENTID'
      Origin = '"AGENDA_HISTORICO"."PARENTID"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object Agenda_HistoricoCODAGENDA_TITULO: TIntegerField
      FieldName = 'CODAGENDA_TITULO'
      Origin = '"AGENDA_HISTORICO"."CODAGENDA_TITULO"'
    end
    object Agenda_HistoricoCAPTION: TIBStringField
      FieldName = 'CAPTION'
      Origin = '"AGENDA_HISTORICO"."CAPTION"'
      Size = 255
    end
    object Agenda_HistoricoDT_INICIO: TDateTimeField
      FieldName = 'DT_INICIO'
      Origin = '"AGENDA_HISTORICO"."DT_INICIO"'
    end
    object Agenda_HistoricoDT_FIM: TDateTimeField
      FieldName = 'DT_FIM'
      Origin = '"AGENDA_HISTORICO"."DT_FIM"'
    end
    object Agenda_HistoricoIMAGEMINDEX: TIntegerField
      FieldName = 'IMAGEMINDEX'
      Origin = '"AGENDA_HISTORICO"."IMAGEMINDEX"'
    end
    object Agenda_HistoricoCOLOR: TIntegerField
      FieldName = 'COLOR'
      Origin = '"AGENDA_HISTORICO"."COLOR"'
    end
    object Agenda_HistoricoIMAGE: TIntegerField
      FieldName = 'IMAGE'
      Origin = '"AGENDA_HISTORICO"."IMAGE"'
    end
    object Agenda_HistoricoTAREFA_COMPLETA: TIntegerField
      FieldName = 'TAREFA_COMPLETA'
      Origin = '"AGENDA_HISTORICO"."TAREFA_COMPLETA"'
    end
    object Agenda_HistoricoTAREFA_INDEX: TIntegerField
      FieldName = 'TAREFA_INDEX'
      Origin = '"AGENDA_HISTORICO"."TAREFA_INDEX"'
    end
    object Agenda_HistoricoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = '"AGENDA_HISTORICO"."STATUS"'
    end
    object Agenda_HistoricoEVENTO_TIPO: TIntegerField
      FieldName = 'EVENTO_TIPO'
      Origin = '"AGENDA_HISTORICO"."EVENTO_TIPO"'
    end
    object Agenda_HistoricoRECURRENCE_INDEX: TIntegerField
      FieldName = 'RECURRENCE_INDEX'
      Origin = '"AGENDA_HISTORICO"."RECURRENCE_INDEX"'
    end
    object Agenda_HistoricoREMINDER_DATE: TDateTimeField
      FieldName = 'REMINDER_DATE'
      Origin = '"AGENDA_HISTORICO"."REMINDER_DATE"'
    end
    object Agenda_HistoricoREMINDER_MINUTES_BEFORE_START: TFloatField
      FieldName = 'REMINDER_MINUTES_BEFORE_START'
      Origin = '"AGENDA_HISTORICO"."REMINDER_MINUTES_BEFORE_START"'
    end
    object Agenda_HistoricoREMINDER_RESOURCES_DATA: TDateTimeField
      FieldName = 'REMINDER_RESOURCES_DATA'
      Origin = '"AGENDA_HISTORICO"."REMINDER_RESOURCES_DATA"'
    end
    object Agenda_HistoricoOPTIONS: TIntegerField
      FieldName = 'OPTIONS'
      Origin = '"AGENDA_HISTORICO"."OPTIONS"'
    end
    object Agenda_HistoricoLOCATION: TIBStringField
      FieldName = 'LOCATION'
      Origin = '"AGENDA_HISTORICO"."LOCATION"'
      Size = 255
    end
    object Agenda_HistoricoRECURRENCE_INFO: TMemoField
      FieldName = 'RECURRENCE_INFO'
      Origin = '"AGENDA_HISTORICO"."RECURRENCE_INFO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object Agenda_HistoricoTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"AGENDA_HISTORICO"."TELEFONE"'
      Size = 12
    end
    object Agenda_HistoricoTAREFA_STATUS: TIntegerField
      FieldName = 'TAREFA_STATUS'
      Origin = '"AGENDA_HISTORICO"."TAREFA_STATUS"'
    end
    object Agenda_HistoricoTAREFA_LINK: TBlobField
      FieldName = 'TAREFA_LINK'
      Origin = '"AGENDA_HISTORICO"."TAREFA_LINK"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object Agenda_HistoricoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"AGENDA_HISTORICO"."VALOR"'
      DisplayFormat = '#,###,##0.00'
    end
    object Agenda_HistoricoCODFINANCEIRO: TIBStringField
      FieldName = 'CODFINANCEIRO'
      Origin = '"AGENDA_HISTORICO"."CODFINANCEIRO"'
      Size = 10
    end
    object Agenda_HistoricoCODEMPRESA: TIBStringField
      FieldName = 'CODEMPRESA'
      Origin = '"AGENDA_HISTORICO"."CODEMPRESA"'
      Size = 10
    end
    object Agenda_HistoricoDT_FATURAMENTO: TDateTimeField
      FieldName = 'DT_FATURAMENTO'
      Origin = '"AGENDA_HISTORICO"."DT_FATURAMENTO"'
    end
    object Agenda_HistoricoCODUSUARIO: TIBStringField
      FieldName = 'CODUSUARIO'
      Origin = '"AGENDA_HISTORICO"."CODUSUARIO"'
      Size = 10
    end
    object Agenda_HistoricoCODAGENDA: TIntegerField
      FieldName = 'CODAGENDA'
      Origin = '"AGENDA_HISTORICO"."CODAGENDA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Agenda_HistoricoDT_ALTERACAO: TDateTimeField
      FieldName = 'DT_ALTERACAO'
      Origin = '"AGENDA_HISTORICO"."DT_ALTERACAO"'
    end
    object ibstrngfldAgenda_HistoricoFUNCIONARIO: TIBStringField
      FieldName = 'FUNCIONARIO'
      Origin = '"AGENDA_HISTORICO"."FUNCIONARIO"'
      Size = 15
    end
    object ibstrngfldAgenda_HistoricoSOLICITANTE: TIBStringField
      FieldName = 'SOLICITANTE'
      Origin = '"AGENDA_HISTORICO"."SOLICITANTE"'
      Size = 150
    end
    object ibstrngfldAgenda_HistoricoCODVENDA: TIBStringField
      FieldName = 'CODVENDA'
      Origin = '"AGENDA_HISTORICO"."CODVENDA"'
      Size = 15
    end
    object Agenda_HistoricoUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"USUARIO"."USUARIO"'
      Size = 30
    end
    object ibstrngfldAgenda_HistoricoCODAGENDA_FAQ: TIBStringField
      FieldName = 'CODAGENDA_FAQ'
      Origin = '"AGENDA_HISTORICO"."CODAGENDA_FAQ"'
      Size = 15
    end
    object ibstrngfldAgenda_HistoricoAGENDA_FAQ: TIBStringField
      FieldName = 'AGENDA_FAQ'
      Origin = '"AGENDA_HISTORICO"."AGENDA_FAQ"'
      Size = 150
    end
    object ibstrngfldAgenda_HistoricoCODEQUIPAMENTO: TIBStringField
      FieldName = 'CODEQUIPAMENTO'
      Origin = '"AGENDA_HISTORICO"."CODEQUIPAMENTO"'
      Size = 15
    end
    object ibstrngfldAgenda_HistoricoEQUIPAMENTO: TIBStringField
      FieldName = 'EQUIPAMENTO'
      Origin = '"AGENDA_HISTORICO"."EQUIPAMENTO"'
      Size = 150
    end
    object ibstrngfldAgenda_HistoricoOCORRENCIA: TIBStringField
      FieldName = 'OCORRENCIA'
      Origin = '"AGENDA_HISTORICO"."OCORRENCIA"'
      Size = 100
    end
    object Agenda_HistoricoPESSOA_CLIENTE_CODIGO: TIBStringField
      FieldName = 'PESSOA_CLIENTE_CODIGO'
      Origin = '"AGENDA_HISTORICO"."PESSOA_CLIENTE_CODIGO"'
      Size = 10
    end
    object Agenda_HistoricoPESSOA_CLIENTE_TIPO: TIBStringField
      FieldName = 'PESSOA_CLIENTE_TIPO'
      Origin = '"AGENDA_HISTORICO"."PESSOA_CLIENTE_TIPO"'
      Size = 3
    end
    object Agenda_HistoricoPESSOA_CLIENTE_SEQUENCIA: TIntegerField
      FieldName = 'PESSOA_CLIENTE_SEQUENCIA'
      Origin = '"AGENDA_HISTORICO"."PESSOA_CLIENTE_SEQUENCIA"'
    end
    object Agenda_HistoricoPESSOA_FUNCIONARIO_CODIGO: TIBStringField
      FieldName = 'PESSOA_FUNCIONARIO_CODIGO'
      Origin = '"AGENDA_HISTORICO"."PESSOA_FUNCIONARIO_CODIGO"'
      Size = 10
    end
    object Agenda_HistoricoPESSOA_FUNCIONARIO_TIPO: TIBStringField
      FieldName = 'PESSOA_FUNCIONARIO_TIPO'
      Origin = '"AGENDA_HISTORICO"."PESSOA_FUNCIONARIO_TIPO"'
      Size = 3
    end
    object Agenda_HistoricoPESSOA_FUNCIONARIO_SEQUENCIA: TIntegerField
      FieldName = 'PESSOA_FUNCIONARIO_SEQUENCIA'
      Origin = '"AGENDA_HISTORICO"."PESSOA_FUNCIONARIO_SEQUENCIA"'
    end
  end
end
