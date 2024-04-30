inherited FrmProduto_Barras: TFrmProduto_Barras
  Caption = 'IMPRESS'#195'O DE C'#211'DIGO DE BARRAS'
  ClientHeight = 555
  ClientWidth = 794
  OldCreateOrder = True
  PopupMenu = AdicionaTodosProdutos
  Position = poDesigned
  ExplicitWidth = 810
  ExplicitHeight = 594
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Left = 687
    Height = 555
    TabOrder = 1
    ExplicitLeft = 687
    ExplicitHeight = 555
    inherited Gradient2: TGradient
      Height = 516
      ExplicitLeft = 0
      ExplicitHeight = 516
    end
    object Label13: TLabel [1]
      Left = 4
      Top = 254
      Width = 98
      Height = 13
      Caption = 'Iniciar impress'#227'o em:'
      Transparent = True
    end
    inherited Ali: TPanel
      Top = 518
      ExplicitTop = 518
    end
    inherited BitBtn1: TBitBtn
      Top = 5
      Visible = False
      ExplicitTop = 5
    end
    inherited BitBtn6: TBitBtn
      Top = 150
      Caption = 'Imprimir'
      OnClick = BitBtn6Click
      ExplicitTop = 150
    end
    inherited DBNav: TcxDBNavigator
      Top = 185
      Width = 86
      ExplicitTop = 185
      ExplicitWidth = 86
    end
    object BitBtn8: TBitBtn
      Left = 6
      Top = 216
      Width = 95
      Height = 25
      Hint = 'Consultar Cadastro'
      Caption = 'Configurar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF1C99CE2BA5D51C9DD10A8AC6FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFBFA5A34D5A72FF00FFFF00FF249CCFA6EEF7
        6CEBF85DD9F04AC7E739B8E020A0D40F91CA0F91C9FF00FFFF00FFBFA5A35766
        831276E23C91DCFF00FF0C8CC799DDEF8BFFFF80FCFF82FBFF7FFAFF79F3FF65
        E1F74ECEED3CBAE07591A05B66811170D833A1FF2A9AFEFF00FF1296CC59BADE
        9FFEFF75F7FF78F6FF77F2FC89D9E087D7DE7BE2EA91BCC05168891370D531A0
        FF319EFBFF00FFFF00FF26A5D448C1E69FEFF879F6FB87D8DCBACABCDABCA5D0
        B59EAF9A8C817A734179AF32A3FF3DACFE1B9CD4FF00FFFF00FF27AFDE8B97A1
        88CFE28BD1D3CBB4ADF7F0DDFFFFD8FFFFD9FAF8C5CFB08CC4A9A34DC1FC55D0
        FB41C1E3FF00FFFF00FF25AFE1AD706B5DBCDDB5A69EF7F4EEFFFFFFFFFFE3FF
        FFD4FFF7C1FFE6A5D8A0826FD4EB59D7FB68E2F80E90C9FF00FF26AFE1B5776D
        A4CFD9CEB69EFFFFEAFFFFF3FFFFEAFFFFD7F7DCA9F6C986E1B89191C0C753D3
        FB7EF3FF28AAD8FF00FF28B0E0BC7F6EFFF4EBD5BCA1FFFFDDFFFFDDFFFFE0FF
        FACAEFBD81F4BD77E7C49A93C0C44FD3FB7DF4FF56D5EFFF00FF28AFE1C58870
        FFFCF8CAAA99FEFFCEFFFFC9F8E1ADF0C78CF3CA96FFEBB5D5AF959AC9D37AE0
        FE9DFBFF96F8FF23A1D328B0E1CE9173FFFAF7D8C4BDDCC59EFCE5A7FAC782FB
        D08BFFF7E0E7DCCE8CA5AA6BC9E65FBCE060BBDE6CC4E329A1D12DB2E2D59975
        FFF8F3FCFBFAE5D1C9E9CAA6E7C599E1C298CCB59FB18B8875E7F86DEDFE179D
        D1FF00FFFF00FFFF00FF1FA1D9DDA077FFFBF6FFFFFFFFFFFFFFFFFEFBF4EBB4
        8379BF7849B16F5350C0E550C4E71C9DD0FF00FFFF00FFFF00FFFF00FFE2A678
        FFFFFFFFFFFFFFFFFFFFFFFFF8FAFCB6877AE29955FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFE7AB79D1926DD1926DD1926DD1926DD1926DB4
        7E6FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = BitBtn8Click
    end
    object SpinEdit1: TSpinEdit
      Left = 4
      Top = 269
      Width = 99
      Height = 22
      MaxValue = 999
      MinValue = 1
      TabOrder = 9
      Value = 1
    end
  end
  inherited Panel1: TPanel
    Width = 687
    Height = 555
    TabOrder = 0
    ExplicitWidth = 687
    ExplicitHeight = 555
    inherited Gradient1: TGradient
      Width = 683
      ExplicitWidth = 683
    end
    inherited Gradient3: TGradient
      Width = 683
      Height = 45
      Align = alTop
      ExplicitLeft = 4
      ExplicitTop = 50
      ExplicitWidth = 683
      ExplicitHeight = 45
    end
    inherited Label2: TLabel
      Left = 189
      Top = 34
      Width = 58
      Caption = 'Descric'#227'o'
      Visible = False
      ExplicitLeft = 189
      ExplicitTop = 34
      ExplicitWidth = 58
    end
    object Label6: TLabel [3]
      Left = 480
      Top = 34
      Width = 66
      Height = 13
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel [4]
      Left = 574
      Top = 34
      Width = 50
      Height = 13
      Caption = 'R$ Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    inherited Label4: TLabel
      Left = 6
      Top = 34
      Width = 40
      Caption = 'C'#243'digo'
      ExplicitLeft = 6
      ExplicitTop = 34
      ExplicitWidth = 40
    end
    object Label3: TLabel [6]
      Left = 102
      Top = 34
      Width = 85
      Height = 13
      Caption = 'C'#243'd. de Barras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    inherited DBEdit2: TDBEdit
      Left = 55
      Top = 100
      Width = 10
      TabStop = False
      DataField = ''
      DataSource = nil
      TabOrder = 6
      Visible = False
      ExplicitLeft = 55
      ExplicitTop = 100
      ExplicitWidth = 10
    end
    inherited DBEdit1: TDBEdit
      Left = 35
      Top = 100
      Width = 14
      DataField = ''
      DataSource = nil
      TabOrder = 5
      Visible = False
      ExplicitLeft = 35
      ExplicitTop = 100
      ExplicitWidth = 14
    end
    inherited NetGradient2: TcxLabel
      Caption = 'IMPRESS'#195'O DE C'#211'DIGO DE BARRAS'
      ExplicitWidth = 321
    end
    inherited StatusBar: TStatusBar
      Top = 534
      Width = 683
      ExplicitTop = 534
      ExplicitWidth = 683
    end
    object EdtProdutoDescricao: TEdit
      Left = 186
      Top = 46
      Width = 294
      Height = 23
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      MaxLength = 400
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 70
      Width = 683
      Height = 464
      Align = alClient
      Ctl3D = False
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODBARRAS'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Barras'
          Title.Color = clMoneyGreen
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.'
          Title.Color = clMoneyGreen
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o do Produto'
          Title.Color = clMoneyGreen
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 326
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANT'
          Title.Caption = 'Quantidade'
          Title.Color = clMoneyGreen
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'R$ Valor'
          Title.Color = clMoneyGreen
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TAMANHO'
          Title.Caption = 'Tamanho'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FAMILIA'
          Title.Caption = 'Fam'#237'lia'
          Visible = True
        end>
    end
    object BitBtn9: TBitBtn
      Left = 627
      Top = 30
      Width = 28
      Height = 37
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337F33333333333333033333333333333373F333333333333090333
        33333333337F7F33333333333309033333333333337373F33333333330999033
        3333333337F337F33333333330999033333333333733373F3333333309999903
        333333337F33337F33333333099999033333333373333373F333333099999990
        33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333300033333333333337773333333}
      NumGlyphs = 2
      TabOrder = 4
      OnClick = BitBtn9Click
    end
    object BitBtn14: TBitBtn
      Left = 655
      Top = 30
      Width = 28
      Height = 37
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
        3333333333777F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
        3333333777737777F333333099999990333333373F3333373333333309999903
        333333337F33337F33333333099999033333333373F333733333333330999033
        3333333337F337F3333333333099903333333333373F37333333333333090333
        33333333337F7F33333333333309033333333333337373333333333333303333
        333333333337F333333333333330333333333333333733333333}
      NumGlyphs = 2
      TabOrder = 9
      TabStop = False
      OnClick = BitBtn14Click
    end
    object EdtProdutoÎProduto: TcxButtonEdit
      Left = 3
      Top = 46
      AutoSize = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnChange = EdtProdutoÎProdutoPropertiesChange
      TabOrder = 0
      Height = 24
      Width = 99
    end
    object EdtQuant: TcxCurrencyEdit
      Left = 480
      Top = 46
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      EditValue = 0.000000000000000000
      Properties.DisplayFormat = '0'
      TabOrder = 2
      Height = 23
      Width = 64
    end
    object EdtProdutoÎProdutoÎVALOR: TcxCurrencyEdit
      Left = 543
      Top = 46
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '0.00;'
      TabOrder = 3
      Height = 23
      Width = 82
    end
    object Panel3: TPanel
      Left = 102
      Top = 104
      Width = 540
      Height = 205
      TabOrder = 11
      Visible = False
      OnExit = Panel3Exit
      object Label5: TLabel
        Left = 16
        Top = 16
        Width = 38
        Height = 13
        Caption = 'Modelo:'
        Color = clBtnFace
        ParentColor = False
      end
      object Label7: TLabel
        Left = 129
        Top = 16
        Width = 28
        Height = 13
        Caption = 'Porta:'
        Color = clBtnFace
        ParentColor = False
      end
      object Label8: TLabel
        Left = 16
        Top = 120
        Width = 47
        Height = 13
        Caption = 'N'#186' Copias'
        Color = clBtnFace
        ParentColor = False
      end
      object Label9: TLabel
        Left = 104
        Top = 120
        Width = 59
        Height = 13
        Caption = 'Avan'#231'o Etq:'
        Color = clBtnFace
        ParentColor = False
      end
      object Image1: TImage
        Left = 281
        Top = 16
        Width = 229
        Height = 102
        Picture.Data = {
          07544269746D6170DE0D0000424DDE0D0000000000003E00000028000000FA00
          00006D0000000100010000000000A00D0000232E0000232E0000020000000000
          000000000000FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000012491121108404020000000000000000000000000000
          00000000000000000000000040080420A09049249249112B2A94891212208202
          000008000000000000000000040040000000000000000034D56C000000000010
          110440420800202000001222008000020402000000000009248A000000040800
          0020000001248204200000000004001000201090088122569665810080400080
          8000000840000000000000004000448000000202410800296552901012008008
          08810440000000810000211004880000C908800101820452693CC04200111400
          24108082120408000400000200000C0D333322246448C9CADEE76444C8CC2391
          4301391280200008000004001000825900212226240C50559363642808009110
          402308324000808088000020001003310920222062014865A4DB5C4D44818310
          493011820000080000002002008001010A112622226008CB9A66EE404C8C1110
          661111124248000800000200480240A00300000000068191A6B9240100100010
          41044000400121201000004000080040000000000000005AF644948000008032
          F900000004000001000004040100000000049090800000A429256B0001009ECD
          5000084200080000000020001000480040000000040124954AB5248448B64549
          00000000400010082000000100100100040000000040014AA5249552565568AA
          A021010004410200040000480101001100904484200800B25293524B25449654
          C0802008000800410000100020000000200200008000111559592AA96AAA4925
          0402002080001000200002000044108000000000044041CA8AA4A5549125A9AA
          000002001080000800000011040000110440044400040224D496524A9654AA53
          10001000020100400000108000000200000240000080025253536CA949260508
          0010800480080400800004002089200020000000840000000000000000000000
          0100002000000000010000110400041104481244100220000000000000000000
          0002008000001000000021000020008222450022012889248810824FFFFFFFFF
          FEFB7750000000000800082448048176FFFBFFBDFFFFC4005FFFFFF00000000D
          6DB5800001000008000000000100106DAA580000DA92000003FFFFE000000000
          094C800000004000000021080000005B55A00000D5700000007FFBE000000000
          06EF0000081001008000044144800065BB700001AEB00000002D5EE000000000
          01B3801200020000000000000000003AAB50000173400000000EEF61FFFFFFF0
          00AC87FC00000020000010122000002DD5A000029D8000000007FBE124924A5F
          D057068600000000080001000480005ABDB00003D70000000003BDA1554AA949
          5035856A02000000000004200000002D54A00002B60000000001DF61B6F55B6A
          6C1A84B4000024010000200490000016DB6000057C0000000001B6E0992DACAD
          AA0D86CD00080000000000800240001AAB400007E80000000000FDE14A92D595
          340B455600000020000008210000000000000006F800000000006FE1EDDA4AEA
          D70D82A80000000010002202240000000000000F5000000000007DA0952DB52D
          290506D60120800001000008004000000000000DF000000000003BE16AC00055
          AA86852A0000000200000080000000000000000FC000000000002EE14D600012
          B68585B40800040000000820491000000000001EE000004800001FB1B240000D
          558304A60000004000000204000000000000000DA00001FC00001BE09BA1A805
          AA8586DA0002000008002001002000000000001FC00003FF00001DA16CA3FF82
          9543852C0000000000000890248000000000003BC00007AF80001FE192C365C2
          EAC285A60020200080000000000000000000003D00000F7BC0000EE16D63DA42
          550544D90100000000000104821000000000003FC0000FEFC0000B609242EEC3
          5B4386940000011000002420100400000000006B80001DF6C0000FE16EA35582
          A484836E0000000000000000004000000000007D00001EBEE0007DD195A3B6C3
          5B8704A70000800044000112448000000000007F80001BDBE003FEE16941AA05
          55058690020800020000100000080000200000E780001F7F601FD7A0AEA00004
          AA8685EF000001000000020810000003AE0000FD00001BF6F0FDBBE15560000D
          B50B4235000008000000084102100001D80000BF80003DDDDBEFFEE169400035
          560D0592000000000000000040420000B400019600001F6FFFDDB7E1AB2012CA
          A81A85BB001000000000222400000000CC0001E700001BFDB77B7B6135BFED5A
          D4178655800080100800000012040000B000027900003DB7DDEFEF60CA5556AD
          286905A4804000008000088200408000F800031700001FFEFFBDBDE156C92952
          80B6C4BB400008800000101082000000480003EB00001D5B6DF77BE1A96EDADA
          015B0552E000000000000100102400006800055A800037EFDEDFEF613692AD28
          035B86AD200000000000000100010000600006AD80001FBDF7F6DDE14B6B52D6
          01B48556DF6040000000244804800000300006D600003DF6EEDDFEE0D95CAD5B
          80CD82A924C00004110000008810800030000D7680001B7F7DBFB7A16AA000A4
          E0DB06D535A00000000002200004200020000B2980001FB7DBF6EEE14DA0002A
          B06B852C2A700020000020044080000020000BB700001B7AE77BFBE1AA80001B
          4C1585A816900400000004800410000000001D6D80000DEFE0375F615561F815
          683C84D40B48000080000012080240002000135480000FFEC007EDE0AB43FF0A
          5417065C09680000000010004080100000001ADB80000EB6C0003FE16CA3550B
          AA12834806B000000000022000200000000036B6800007DFC0000D6155A3FE89
          5A1D009001501088040001048904400000002DADC00003F680000FA1AA436D0D
          54140000000000000000240000000800000033524000017D00001FE155A1DF0A
          AB18000000000000200000201021000000006DBDC000002800001AE13563FA15
          B4140000000000000000008921040000000036ADA000000000003F61AA800015
          4A1000000000020000001000000020000000D5666000000000003BE156C0001A
          B600000000002000800004000040040000006BB5D00000000000776152600066
          AA0000000000000800000092448900000000BD5B3000000000007EE1ADA001B5
          540004104000000002002200000022000001CAD5B00000000000EFE0AD5FFD14
          B20080800008802000000001080000000000B6BB6C0000000000F6E152B246D6
          AC00000001000000000010900124440000016D555A0000000001DEE1B54D34DB
          500200000000040000000404400080000003ABAEDC0000000003EFC096B2DB29
          580004004000000020000040080008000001596AA700000000077B61AAD692D5
          A00000020400000000002100822201000000EEB777800000000FF6F16D2ADA6C
          80000000001010080000041200102000000056D559E00000001DBDA095B52695
          00082010000100808200000011000080000829B2AA600000003EEB6100024880
          0000008000400000000010804002440000001D6F6EBC000001EFB5A000000000
          00000000100000000000002400480021010106ADB5DE400005F76D4000000000
          00010000800000000000090109000000101003696D45C800BF7BAB7000000000
          00100400000000000000000000004912020000D756BBBFFFFFBDDAAFFFFFFFF8
          008020040101042210002042442400002009005ADB6CDFFF5BDD35D56EEF7FE0
          000000200008000000000A080081020000202036AAD66B6DF6F6DADAA5295780
          080000000000000000000010100020490480010B6D5BBDF7BF7ADB2EDBB6E800
          000000000400000000001080821004004000840356D94FBEEDCB56F56D5B2C00
          8008800020000400010000000042000008000000EB6DBB6DFEEDAA95B36AE000
          0100048000000040800022242400408800482000352EDFFF5FB576EDADAD4004
          10000000001080000000000080000801000100801AE54DB7EB5AAB5AD6D68000
          0000000840000004000004200124810024000408037AEEEDFD6F5AB659580040
          00102000000004000200108410001024008810000096B7FEB6A5B755B6A00000
          0001000002000000000000008000000040010041002D9DB7DB7AD4EB6B400402
          41000201000000000000080004920401082000081005DF6DF5952EB6B4000040
          0000000000108040000001242000909001002200000067FED6DBF35B60008000
          080000480000000024004201000000000008000082401DB7AAAC9DAC80040000
          0008000001001002000010100948000440010090000000DD76D76AA000000808
          000090000800000000000080800112400920100110000002AD75440000200041
          0120000040020080000004081004000800004200000800000000000000000000
          0000008000000000000020000220200120090010010100000000000002004200
          0400000000080000000000910001048004800004902020000000000800410000
          2000020200001001080008002440002400100480000000000000444040000001
          0001200000800020000001088008400090004000010204248888000008000040
          0020000820000100000002000102090002020020201000000000000100100800
          0000000000000000000010211000001000100402000000400001100000004008
          02040000010080004100}
      end
      object Label10: TLabel
        Left = 281
        Top = 126
        Width = 111
        Height = 13
        Caption = 'Nome Imagem Mem'#243'ria'
        Color = clBtnFace
        ParentColor = False
      end
      object Label11: TLabel
        Left = 16
        Top = 61
        Width = 72
        Height = 13
        Caption = 'DPI Impressora'
        Color = clBtnFace
        ParentColor = False
      end
      object Label12: TLabel
        Left = 192
        Top = 120
        Width = 60
        Height = 13
        Caption = 'Temperatura'
        Color = clBtnFace
        ParentColor = False
      end
      object cbModelo: TComboBox
        Left = 16
        Top = 33
        Width = 90
        Height = 21
        Style = csDropDownList
        ItemIndex = 1
        TabOrder = 0
        Text = 'etqPpla'
        Items.Strings = (
          'etqNenhuma'
          'etqPpla'
          'etqPPlb'
          'etqZPLII'
          'etqEpl2')
      end
      object cbPorta: TComboBox
        Left = 129
        Top = 33
        Width = 126
        Height = 21
        ItemIndex = 2
        TabOrder = 1
        Text = 'COM1'
        Items.Strings = (
          'LPT1'
          'LPT2'
          'COM1'
          'COM2'
          'COM3'
          '\\localhost\ZEBRA'
          '\\127.0.0.1\ARGOX'
          'Digite a porta')
      end
      object eCopias: TEdit
        Left = 16
        Top = 136
        Width = 65
        Height = 21
        TabOrder = 2
        Text = '1'
      end
      object eAvanco: TEdit
        Left = 104
        Top = 136
        Width = 70
        Height = 21
        TabOrder = 3
        Text = '600'
      end
      object bEtqSimples: TButton
        Left = 13
        Top = 169
        Width = 107
        Height = 25
        Caption = 'Etiqueta Simples'
        TabOrder = 4
      end
      object bEtqCarreiras: TButton
        Left = 124
        Top = 169
        Width = 107
        Height = 25
        Caption = 'Etiqueta 3 Colunas'
        TabOrder = 5
      end
      object Edit1: TEdit
        Left = 281
        Top = 142
        Width = 121
        Height = 21
        TabOrder = 6
        Text = 'ACBR'
      end
      object bCarregarImg: TButton
        Left = 239
        Top = 169
        Width = 97
        Height = 25
        Caption = 'Carregar Imagem'
        TabOrder = 7
      end
      object bImprimirImagem: TButton
        Left = 343
        Top = 169
        Width = 97
        Height = 25
        Caption = 'Imprimir Imagem'
        TabOrder = 8
      end
      object ckMemoria: TCheckBox
        Left = 142
        Top = 77
        Width = 94
        Height = 19
        Caption = 'Limpar Mem'#243'ria'
        Checked = True
        State = cbChecked
        TabOrder = 9
      end
      object rbStream: TRadioButton
        Left = 422
        Top = 124
        Width = 87
        Height = 19
        Caption = 'De um Stream'
        TabOrder = 10
      end
      object rbArquivo: TRadioButton
        Left = 422
        Top = 144
        Width = 90
        Height = 19
        Caption = 'De um Arquivo'
        Checked = True
        TabOrder = 11
        TabStop = True
      end
      object cbDPI: TComboBox
        Left = 16
        Top = 78
        Width = 90
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 12
        Text = 'dpi203'
        Items.Strings = (
          'dpi203'
          'dpi300'
          'dpi600')
      end
      object eAvanco1: TEdit
        Left = 192
        Top = 136
        Width = 70
        Height = 21
        TabOrder = 13
        Text = '10'
      end
      object Button1: TButton
        Left = 518
        Top = 3
        Width = 19
        Height = 20
        Caption = 'X'
        TabOrder = 14
        OnClick = Button1Click
      end
    end
    object EdtCodBarras: TcxTextEdit
      Left = 101
      Top = 46
      AutoSize = False
      TabOrder = 12
      Height = 23
      Width = 85
    end
    object CkUtilizaCodFabrica: TcxCheckBox
      Left = 253
      Top = 27
      Caption = 'Usa Cod. EAN'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 13
      Transparent = True
    end
  end
  inherited DS: TDataSource
    DataSet = Produto_Barras
    Left = 332
    Top = 208
  end
  inherited Timer1: TTimer
    Left = 360
    Top = 208
  end
  inherited Transa: TIBTransaction
    Left = 388
    Top = 208
  end
  inherited SPA: TIBStoredProc
    Left = 709
    Top = 326
  end
  object Produto_Barras: TIBDataSet
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PRODUTO_BARRAS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into PRODUTO_BARRAS'
      
        '  (CODBARRAS, CODIGO, CODPRODUTO, DESCRICAO, FAMILIA, QUANT, REF' +
        'ERENCIA, '
      '   TAMANHO, VALOR)'
      'values'
      
        '  (:CODBARRAS, :CODIGO, :CODPRODUTO, :DESCRICAO, :FAMILIA, :QUAN' +
        'T, :REFERENCIA, '
      '   :TAMANHO, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  CODPRODUTO,'
      '  CODBARRAS,'
      '  DESCRICAO,'
      '  REFERENCIA,'
      '  TAMANHO,'
      '  QUANT,'
      '  VALOR,'
      '  FAMILIA'
      'from PRODUTO_BARRAS '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from PRODUTO_BARRAS')
    ModifySQL.Strings = (
      'update PRODUTO_BARRAS'
      'set'
      '  CODBARRAS = :CODBARRAS,'
      '  CODIGO = :CODIGO,'
      '  CODPRODUTO = :CODPRODUTO,'
      '  DESCRICAO = :DESCRICAO,'
      '  FAMILIA = :FAMILIA,'
      '  QUANT = :QUANT,'
      '  REFERENCIA = :REFERENCIA,'
      '  TAMANHO = :TAMANHO,'
      '  VALOR = :VALOR'
      'where'
      '  CODIGO = :OLD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 303
    Top = 208
    object Produto_BarrasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'BARRAS.CODIGO'
      Required = True
    end
    object Produto_BarrasCODPRODUTO: TIBStringField
      FieldName = 'CODPRODUTO'
      Origin = '"BARRAS"."CODPRODUTO"'
      Size = 15
    end
    object Produto_BarrasREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = 'BARRAS.REFERENCIA'
      Size = 10
    end
    object Produto_BarrasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'BARRAS.DESCRICAO'
      Size = 400
    end
    object Produto_BarrasTAMANHO: TIBStringField
      FieldName = 'TAMANHO'
      Origin = 'BARRAS.TAMANHO'
      Size = 5
    end
    object Produto_BarrasQUANT: TIntegerField
      FieldName = 'QUANT'
      Origin = 'BARRAS.QUANT'
    end
    object Produto_BarrasVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"BARRAS"."VALOR"'
      DisplayFormat = '#,###,##0.00'
    end
    object Produto_BarrasFAMILIA: TIntegerField
      FieldName = 'FAMILIA'
      Origin = '"PRODUTO_BARRAS"."FAMILIA"'
    end
    object Produto_BarrasCODBARRAS: TIBStringField
      FieldName = 'CODBARRAS'
      Origin = '"PRODUTO_BARRAS"."CODBARRAS"'
      Required = True
      Size = 400
    end
  end
  object PopUpMenuImp: TPopupMenu
    OwnerDraw = True
    Left = 737
    Top = 326
    object Agox3etiquetas1: TMenuItem
      Caption = 'Argox Padr'#227'o - 3 Etiquetas'
      OnClick = Agox3etiquetas1Click
    end
    object ColcheseCia1: TMenuItem
      Caption = 'Argox 2,2 x 3,5 cm - 3 Etiquetas '
      OnClick = ColcheseCia1Click
    end
    object Argox4025: TMenuItem
      Caption = 'Argox 2,5 x 4,0 cm - 2 Etiquetas '
      OnClick = Argox2540Click
    end
    object Argox4050: TMenuItem
      Caption = 'Argox 4,0 x 5,0 cm - 2 Etiquetas'
      OnClick = Argox4050Click
    end
    object Argox5045: TMenuItem
      Caption = 'Argox 5,0 x 4,5 cm - 2 Etiquetas'
      OnClick = Argox5045Click
    end
    object Argox6040: TMenuItem
      Caption = 'Argox 6,0 x 4,0 cm - 2 Etiquetas'
      OnClick = Argox6040Click
    end
    object N2EtiquetasArgox74x51: TMenuItem
      Caption = 'Argox 7,4 x 5,0 cm - 2 Etiquetas'
      OnClick = N2EtiquetasArgox74x51Click
    end
    object N75x96cm2etiq1: TMenuItem
      Caption = 'Argox 7,5 x 4,8 cm - 2 Etiquetas'
      OnClick = N75x96cm2etiq1Click
    end
    object ImprimirPimacoFormatoA43Etiquetas1: TMenuItem
      Caption = 'Pimaco A4 - 3 Etiquetas'
      OnClick = ImprimirPimacoFormatoA43Etiquetas1Click
    end
    object PimacoA44Etiquetas1: TMenuItem
      Caption = 'Pimaco A4 - 4 Etiquetas'
      OnClick = PimacoA44Etiquetas1Click
    end
    object PimacoA45Etiquetas1: TMenuItem
      Caption = 'Pimaco A4 - 5 Etiquetas'
      OnClick = PimacoA45Etiquetas1Click
    end
    object Outros1: TMenuItem
      Caption = '2 Etiquetas Argox - Desativado igual arg 4050'
      Visible = False
      OnClick = Outros1Click
    end
    object OutrosEtiqNova1: TMenuItem
      Caption = 'Outros (Etiq.Nova) - Desativado igual arg 2540'
      Visible = False
      OnClick = OutrosEtiqNova1Click
    end
    object AksJeansEtiqAntiga1: TMenuItem
      Caption = 'Ak'#39's Jeans (Etiq. Nova) - Desativado igual arg 2540'
      Visible = False
      OnClick = AksJeansEtiqAntiga1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Personalizado1: TMenuItem
      Caption = 'Personalizado'
      OnClick = Personalizado1Click
    end
  end
  object ACBrETQ: TACBrETQ
    Modelo = etqPpla
    Porta = 'LPT1'
    Ativo = False
    Left = 472
    Top = 44
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'BMP MonoCrom'#195#161'tico|*.bmp|PCX|*.pcx|IMG|*.img'
    Left = 444
    Top = 44
  end
  object UCHistWRGeral1: TUCHistWRGeral
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    Left = 305
    Top = 236
  end
  object AdicionaTodosProdutos: TPopupMenu
    Left = 737
    Top = 353
    object Removeratuais: TMenuItem
      Caption = 'Remover atuais'
      OnClick = RemoveratuaisClick
    end
    object Adicionartodosprodutos1: TMenuItem
      Caption = 'Adicionar todos produtos'
      OnClick = Adicionartodosprodutos1Click
    end
  end
  object FDBarrasImprimir: TFDMemTable
    Active = True
    AfterOpen = FDBarrasImprimirAfterOpen
    FieldDefs = <
      item
        Name = 'CODPRODUTO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TAMANHO'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'QUANT'
        DataType = ftInteger
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VALOR'
        DataType = ftFloat
      end
      item
        Name = 'FAMILIA'
        DataType = ftInteger
      end
      item
        Name = 'CODBARRAS'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 333
    Top = 236
    object FDBarrasImprimirCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 15
    end
    object FDBarrasImprimirDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object FDBarrasImprimirTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 5
    end
    object FDBarrasImprimirQUANT: TIntegerField
      FieldName = 'QUANT'
    end
    object FDBarrasImprimirREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 10
    end
    object FDBarrasImprimirVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '#,###,##0.00'
    end
    object FDBarrasImprimirFAMILIA: TIntegerField
      FieldName = 'FAMILIA'
    end
    object FDBarrasImprimirCODBARRAS: TStringField
      FieldName = 'CODBARRAS'
      Size = 50
    end
  end
  object WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 1
    Empresa = 0
    ValidaPadraoDatela = True
    UsaCadastroPocket = False
    UsaTravaCadastroPocket = False
    Left = 361
    Top = 236
  end
  object Fr3Cadastro: TfrxDBDataset
    UserName = 'CodBarras'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODPRODUTO=CODPRODUTO'
      'REFERENCIA=REFERENCIA'
      'DESCRICAO=DESCRICAO'
      'TAMANHO=TAMANHO'
      'QUANT=QUANT'
      'VALOR=VALOR'
      'FAMILIA=FAMILIA'
      'CODBARRAS=CODBARRAS')
    DataSet = Produto_Barras
    BCDToCurrency = False
    Left = 416
    Top = 328
  end
end
