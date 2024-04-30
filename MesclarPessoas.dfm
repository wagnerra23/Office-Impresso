object FrmMesclarPessoas: TFrmMesclarPessoas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Mesclar cadastro duplicado'
  ClientHeight = 197
  ClientWidth = 961
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object LayoutControlMesclarCadastro: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 961
    Height = 197
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    object cxButton2: TcxButton
      Left = 733
      Top = 167
      Width = 111
      Height = 25
      Caption = 'Confirmar'
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = FrmPrincipal.ImgListBotoes16
      TabOrder = 16
      OnClick = cxButton2Click
    end
    object cxButton1: TcxButton
      Left = 845
      Top = 167
      Width = 111
      Height = 25
      Caption = 'Cancelar'
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes16
      TabOrder = 17
      OnClick = cxButton1Click
    end
    object EdtMesclDuplCorretoÎPessoas: TcxButtonEdit
      Left = 50
      Top = 48
      Properties.Buttons = <
        item
          Enabled = False
          Kind = bkText
        end
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 2
      Width = 92
    end
    object LblMesclDuplCorretoÎPessoasÎFANTASIA: TcxLabel
      Left = 143
      Top = 48
      AutoSize = False
      Style.HotTrack = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 290
      AnchorY = 59
    end
    object LblMesclDuplCorretoÎPessoasÎCNPJCPF: TcxLabel
      Left = 434
      Top = 48
      AutoSize = False
      Style.HotTrack = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 122
      AnchorY = 59
    end
    object EdtMesclDuplDuplicadoÎPessoas: TcxButtonEdit
      Left = 50
      Top = 95
      Properties.Buttons = <
        item
          Enabled = False
          Kind = bkText
        end
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 9
      Width = 92
    end
    object LblMesclDuplDuplicadoÎPessoasÎFANTASIA: TcxLabel
      Left = 143
      Top = 95
      AutoSize = False
      Style.HotTrack = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 291
      AnchorY = 106
    end
    object LblMesclDuplDuplicadoÎPessoasÎCNPJCPF: TcxLabel
      Left = 435
      Top = 94
      AutoSize = False
      Style.HotTrack = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 122
      AnchorY = 105
    end
    object cxLabel1: TcxLabel
      Left = 5
      Top = 5
      Caption = 
        'Selecione os cadastros que deseja Mesclar. Os dados vinculados a' +
        'o cadastro Duplicado ser'#227'o redirecionados para o cadastro Corret' +
        'o.'
      Style.HotTrack = False
      Properties.WordWrap = True
      Transparent = True
      Width = 951
    end
    object LblMesclDuplCorretoÎPessoasÎFONE1: TcxLabel
      Left = 557
      Top = 48
      AutoSize = False
      Style.HotTrack = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 122
      AnchorY = 59
    end
    object LblMesclDuplCorretoÎPessoasÎEMAIL: TcxLabel
      Left = 680
      Top = 48
      AutoSize = False
      Style.HotTrack = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 164
      AnchorY = 59
    end
    object LblMesclDuplDuplicadoÎPessoasÎFONE1: TcxLabel
      Left = 558
      Top = 94
      AutoSize = False
      Style.HotTrack = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 122
      AnchorY = 105
    end
    object LblMesclDuplDuplicadoÎPessoasÎEMAIL: TcxLabel
      Left = 681
      Top = 94
      AutoSize = False
      Style.HotTrack = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 163
      AnchorY = 105
    end
    object cxButton3: TcxButton
      Left = 621
      Top = 167
      Width = 111
      Height = 25
      Caption = 'Trocar'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000003827174DB8824DFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003827174DB8824DFFB8824DFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003827174DB8824DFFB8824DFFB8824DFFB5804CFB9F7042DC795532A74732
        1E630E0A06140000000000000000000000000000000000000000000000003827
        174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFF7C5834AC2B1E123B00000000000000000000000000000000000000000000
        00003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF855E38B91E150C2900000000000000000000000000000000484F
        3879212419373827174DB8824DFFB8824DFF060402082A1E123A61442886A273
        44E1B8824DFFB8824DFF5D422781000000000000000000000000000000007784
        5DC98E9D6FF0212419373827174DB8824DFF0000000000000000000000004C36
        206AB8824DFFB8824DFF91663DC90000000000000000000000000000000093A2
        73F897A776FF8E9D6FF002030204000000000000000000000000000000000302
        0104AD7A48F0B8824DFFB37E4BF8000000000000000000000000000000007784
        5DC997A776FF97A776FF3F45316A00000000000000000000000097A776FF2E32
        244D281C1137AD7A48F091663DC9000000000000000000000000000000004C54
        3C8197A776FF97A776FF859368E14F583E8622261B3A0505040897A776FF97A7
        76FF2E32244D281C1137573E257900000000000000000000000000000000181B
        13296E7956B997A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF2E32244D00000000000000000000000000000000000000000000
        000023271B3B667150AC97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF2E32244D000000000000000000000000000000000000
        0000000000000C0D09143B412E63636D4DA7829066DC95A474FB97A776FF97A7
        76FF97A776FF2E32244D00000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000097A776FF97A7
        76FF2E32244D0000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000097A776FF2E32
        244D0000000000000000000000000000000000000000}
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = FrmPrincipal.ImgListBotoes16
      TabOrder = 15
      OnClick = cxButton3Click
    end
    object cxButton4: TcxButton
      Left = 5
      Top = 48
      Width = 44
      Height = 21
      Caption = 'Ver'
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
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = FrmPrincipal.ImgListBotoes16
      TabOrder = 1
      OnClick = cxButton4Click
    end
    object cxButton5: TcxButton
      Left = 5
      Top = 95
      Width = 44
      Height = 21
      Caption = 'Ver'
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
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = FrmPrincipal.ImgListBotoes16
      TabOrder = 8
      OnClick = cxButton5Click
    end
    object LblMesclDuplDuplicadoÎPessoasÎDATACADASTRO: TcxLabel
      Left = 845
      Top = 94
      AutoSize = False
      Style.HotTrack = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 111
      AnchorY = 105
    end
    object LblMesclDuplCorretoÎPessoasÎDATACADASTRO: TcxLabel
      Left = 845
      Top = 48
      AutoSize = False
      Style.HotTrack = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 111
      AnchorY = 59
    end
    object LayoutControlMesclarCadastroGroup_Root: TdxLayoutGroup
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
    object LayoutControlMesclarCadastroGroup3: TdxLayoutGroup
      Parent = LayoutControlMesclarCadastroGroup_Root
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object LayoutControlMesclarCadastroItem2: TdxLayoutItem
      Parent = LayoutControlMesclarCadastroGroup3
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = LayoutControlMesclarCadastroGroup3
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = LayoutControlMesclarCadastroGroup_Root
      AlignVert = avBottom
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
    object LayoutControlMesclarCadastroGroup5: TdxLayoutGroup
      Parent = LayoutControlMesclarCadastroGroup_Root
      CaptionOptions.Text = 'New Group'
      Offsets.Top = 10
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutControlMesclarCadastroGroup4: TdxLayoutGroup
      Parent = LayoutControlMesclarCadastroGroup_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Offsets.Top = 10
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object LayoutControlMesclarCadastroGroup6: TdxLayoutGroup
      Parent = LayoutControlMesclarCadastroGroup5
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = LayoutControlMesclarCadastroGroup6
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutControlMesclarCadastroItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      Control = EdtMesclDuplCorretoÎPessoas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 92
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlMesclarCadastroItem8: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxLabel6'
      CaptionOptions.Visible = False
      Control = LblMesclDuplCorretoÎPessoasÎFANTASIA
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlMesclarCadastroItem7: TdxLayoutItem
      Parent = LayoutControlMesclarCadastroGroup5
      AlignVert = avBottom
      CaptionOptions.Text = 'CNPJ / CPF'
      CaptionOptions.Layout = clTop
      Control = LblMesclDuplCorretoÎPessoasÎCNPJCPF
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 122
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutLabeledItem1: TdxLayoutLabeledItem
      Parent = LayoutControlMesclarCadastroGroup6
      CaptionOptions.Text = 'Cadastro Correto - Ser'#225' mantido'
      Index = 0
    end
    object LayoutControlMesclarCadastroGroup7: TdxLayoutGroup
      Parent = LayoutControlMesclarCadastroGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object LayoutControlMesclarCadastroGroup2: TdxLayoutGroup
      Parent = LayoutControlMesclarCadastroGroup7
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutControlMesclarCadastroItem4: TdxLayoutItem
      Parent = LayoutControlMesclarCadastroGroup2
      AlignHorz = ahLeft
      Control = EdtMesclDuplDuplicadoÎPessoas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 92
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlMesclarCadastroItem6: TdxLayoutItem
      Parent = LayoutControlMesclarCadastroGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxLabel4'
      CaptionOptions.Visible = False
      Control = LblMesclDuplDuplicadoÎPessoasÎFANTASIA
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 221
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlMesclarCadastroLabeledItem2: TdxLayoutLabeledItem
      Parent = LayoutControlMesclarCadastroGroup7
      CaptionOptions.Text = 'Cadastro Duplicado - Ser'#225' inativado'
      Index = 0
    end
    object LayoutControlMesclarCadastroItem5: TdxLayoutItem
      Parent = LayoutControlMesclarCadastroGroup4
      CaptionOptions.Text = 'CNPJ / CPF'
      CaptionOptions.Layout = clTop
      Control = LblMesclDuplDuplicadoÎPessoasÎCNPJCPF
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 122
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlMesclarCadastroItem9: TdxLayoutItem
      Parent = LayoutControlMesclarCadastroGroup_Root
      CaptionOptions.Text = 'cxLabel3'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 648
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlMesclarCadastroItem1: TdxLayoutItem
      Parent = LayoutControlMesclarCadastroGroup5
      AlignVert = avBottom
      CaptionOptions.Text = 'Telefone'
      CaptionOptions.Layout = clTop
      Control = LblMesclDuplCorretoÎPessoasÎFONE1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 122
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlMesclarCadastroItem12: TdxLayoutItem
      Parent = LayoutControlMesclarCadastroGroup5
      AlignVert = avBottom
      CaptionOptions.Text = 'Email'
      CaptionOptions.Layout = clTop
      Control = LblMesclDuplCorretoÎPessoasÎEMAIL
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 164
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutControlMesclarCadastroItem10: TdxLayoutItem
      Parent = LayoutControlMesclarCadastroGroup4
      CaptionOptions.Text = 'Telefone'
      CaptionOptions.Layout = clTop
      Control = LblMesclDuplDuplicadoÎPessoasÎFONE1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 122
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlMesclarCadastroItem11: TdxLayoutItem
      Parent = LayoutControlMesclarCadastroGroup4
      CaptionOptions.Text = 'Email'
      CaptionOptions.Layout = clTop
      Control = LblMesclDuplDuplicadoÎPessoasÎEMAIL
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 163
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutControlMesclarCadastroItem13: TdxLayoutItem
      Parent = LayoutControlMesclarCadastroGroup3
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlMesclarCadastroItem14: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 44
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlMesclarCadastroItem15: TdxLayoutItem
      Parent = LayoutControlMesclarCadastroGroup2
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 44
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlMesclarCadastroItem16: TdxLayoutItem
      Parent = LayoutControlMesclarCadastroGroup4
      CaptionOptions.Text = 'Cadastro'
      CaptionOptions.Layout = clTop
      Control = LblMesclDuplDuplicadoÎPessoasÎDATACADASTRO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LayoutControlMesclarCadastroItem17: TdxLayoutItem
      Parent = LayoutControlMesclarCadastroGroup5
      AlignVert = avBottom
      CaptionOptions.Text = 'Cadastro'
      CaptionOptions.Layout = clTop
      Control = LblMesclDuplCorretoÎPessoasÎDATACADASTRO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 276
    Top = 48
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
  object UCControls1: TUCControls
    GroupName = 'Cadastro de Pessoas'
    UserControl = FrmPrincipal.UserControl
    Components = ''
    MostraMessagemErroValidacao = False
    Left = 304
    Top = 48
  end
end
