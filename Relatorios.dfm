object FrmRelatorios: TFrmRelatorios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Relat'#243'rios'
  ClientHeight = 437
  ClientWidth = 781
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 781
    Height = 437
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = TabImpressao
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 437
    ClientRectRight = 781
    ClientRectTop = 24
    object TabImpressao: TcxTabSheet
      Caption = 'Impress'#227'o de Relat'#243'rios'
      ImageIndex = 0
      object PgRelatorios: TPageControl
        Left = 271
        Top = 19
        Width = 498
        Height = 355
        ActivePage = TabFiltro1
        TabOrder = 0
        object TabFiltro1: TTabSheet
          Caption = 'Filtro 1'
          object Label3: TLabel
            Left = 3
            Top = 115
            Width = 50
            Height = 13
            Caption = 'Descri'#231#227'o:'
            Visible = False
          end
          object Label4: TLabel
            Left = 3
            Top = 156
            Width = 33
            Height = 13
            Caption = 'Grupo:'
            Visible = False
          end
          object Label5: TLabel
            Left = 245
            Top = 156
            Width = 24
            Height = 13
            Caption = 'Tipo:'
            Visible = False
          end
          object Label1: TLabel
            Left = 3
            Top = 75
            Width = 59
            Height = 13
            Caption = 'Fornecedor:'
          end
          object EdtDescricao: TEdit
            Left = 3
            Top = 131
            Width = 478
            Height = 21
            TabOrder = 0
            Visible = False
          end
          object CbGrupo: TComboBox
            Left = 3
            Top = 171
            Width = 236
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 1
            Text = 'Todos'
            Visible = False
            Items.Strings = (
              'Todos')
          end
          object CbTipo: TComboBox
            Left = 245
            Top = 171
            Width = 236
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 2
            Text = 'Todos'
            Visible = False
            Items.Strings = (
              'Todos')
          end
          object GroupBox1: TGroupBox
            Left = 3
            Top = 3
            Width = 478
            Height = 57
            Caption = 'Per'#237'odo'
            TabOrder = 3
            object Label2: TLabel
              Left = 124
              Top = 27
              Width = 6
              Height = 13
              Caption = #224
            end
            object Label8: TLabel
              Left = 279
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Filtro:'
              Visible = False
            end
            object DtInicio: TDateTimePicker
              Left = 11
              Top = 22
              Width = 94
              Height = 21
              Date = 40885.000000000000000000
              Time = 0.739078414349933200
              TabOrder = 0
            end
            object DtFim: TDateTimePicker
              Left = 147
              Top = 22
              Width = 94
              Height = 21
              Date = 40885.000000000000000000
              Time = 0.739078414349933200
              TabOrder = 1
            end
            object CbTipoFiltro: TComboBox
              Left = 317
              Top = 22
              Width = 145
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 2
              Text = 'Data de Faturamento'
              Visible = False
              Items.Strings = (
                'Data de Faturamento'
                'Data de Emiss'#227'o')
            end
          end
          object CkExibirMovimentacao: TCheckBox
            Left = 3
            Top = 208
            Width = 278
            Height = 17
            Caption = 'Exibir somente produtos que tiveram movimenta'#231#227'o'
            TabOrder = 6
            Visible = False
            WordWrap = True
          end
          object EdtFornecedorÎPessoas: TcxButtonEdit
            Left = 3
            Top = 88
            Properties.Buttons = <
              item
                Enabled = False
                Kind = bkText
              end
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnChange = EdtCodFornecedorPropertiesChange
            TabOrder = 5
            Width = 75
          end
          object EdtFornecedorÎPessoasÎRAZAOSOCIAL: TcxTextEdit
            Left = 81
            Top = 88
            Properties.ReadOnly = True
            TabOrder = 4
            Width = 400
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Filtro 2'
          ImageIndex = 1
          object Label7: TLabel
            Left = 3
            Top = 82
            Width = 59
            Height = 13
            Caption = 'Funcion'#225'rio:'
          end
          object GroupBox3: TGroupBox
            Left = 4
            Top = 4
            Width = 478
            Height = 57
            Caption = 'Referente ao m'#234's de'
            TabOrder = 0
            object Label6: TLabel
              Left = 215
              Top = 27
              Width = 12
              Height = 13
              Caption = 'de'
            end
            object EdtFim: TcxDateEdit
              Left = 240
              Top = 22
              Properties.Alignment.Horz = taCenter
              TabOrder = 3
              Width = 190
            end
            object EdtInicio: TcxDateEdit
              Left = 14
              Top = 22
              Properties.Alignment.Horz = taCenter
              TabOrder = 2
              Width = 190
            end
            object CbMes: TComboBox
              Left = 14
              Top = 22
              Width = 190
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 0
              Text = 'Janeiro'
              Items.Strings = (
                'Janeiro'
                'Fevereiro'
                'Mar'#231'o'
                'Abril'
                'Maio'
                'Junho'
                'Julho'
                'Agosto'
                'Setembro'
                'Outubro'
                'Novembro'
                'Dezembro')
            end
            object CbAno: TComboBox
              Left = 240
              Top = 22
              Width = 190
              Height = 21
              ItemIndex = 0
              TabOrder = 1
              Text = '2000'
              Items.Strings = (
                '2000'
                '2001'
                '2002'
                '2003'
                '2004'
                '2005'
                '2006'
                '2007'
                '2008'
                '2009'
                '2010'
                '2011'
                '2012'
                '2013'
                '2014'
                '2015'
                '2016'
                '2017'
                '2018'
                '2019'
                '2020'
                '2021'
                '2022'
                '2023'
                '2024'
                '2025'
                '2026'
                '2027'
                '2028'
                '2029'
                '2030')
            end
            object cxDateProfileButton1: TcxDateProfileButton
              Left = 434
              Top = 21
              Width = 22
              Height = 22
              Hint = 'Clique para selecionar um per'#237'odo'
              Caption = 'cxDateProfileButton1'
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000000000000030303280909
                0A890505058C09080A8B0C0C0D8B0F0F108B1111128B1110118B0D0D0D8B0D0D
                0D8A0F0E0F8A0808098A0808098E080808540000000000000000040404587C7A
                7BFF979698FF919092FF999799FF9C9A9BFF9A999AFFA5A3A5FFABAAACFFA2A1
                A3FFA09E9FFFB9B6B8FFC6C4C5FF3C3A3CAF000000000000000000000059A2A1
                A2FFE5E5E5FFDADAD9FFCFCFCFFFD0D0D0FFD5D5D4FFCDCDCDFFE0E0E0FFEFEF
                EFFFE1E1E1FFCFCDCEFFF3EFEFFF494749A70000000000000000000000599F9F
                9FFFE3E3E3FFE0E0E0FF6E6E6EFF767676FFE1E1E1FF505050FF292929FF5D5D
                5DFFB2B2B2FFE0E0E1FFC9C7C8FF454547A7000000000000000000000059A4A3
                A4FFEAEAEAFFE9E9E9FF5B5B5BFF636363FFF3F3F3FF949494FF0E0E0EFF8282
                82FFD0D0D0FFEAEAEAFFC3C2C3FF3A373AA8000000000000000000000059A8A7
                A8FFF2F2F2FFFAFAFAFF656565FF696969FFF0F0F0FFF4F4F4FF909090FF2B2B
                2BFFBDBDBDFFF4F4F4FFCFCFCFFF302F30AB000000000000000000000059B2B1
                B2FFE3E3E3FFA6A6A6FF5A5A5AFF6F6F6FFFF6F6F6FFE5E5E5FFFFFFFFFF8585
                85FF3C3C3CFFEFEFEFFFE1E0E1FF353435AE000000000000000000000059B7B7
                B7FFF1F1F1FF626262FF0A0A0AFF737373FFFFFFFFFF646464FF838383FF9B9B
                9BFF272727FFE7E7E7FFEDEDEDFF3D3D3DB0000000000000000000000059B9BB
                C0FFFFFFFFFFFFFFFFFF71747BFF8B8F97FFFFFFFFFFBCC0C8FF474B53FF4246
                4EFFA4A7AFFFFFFFFFFFF2F5FCFF404142B1000000000000000001030559B0A4
                8BFFF2E1B9FFF0DEB6FFEEDCB4FFE4D0A4FFEDDBB1FFF5E3BAFFEAD7ADFFE5D2
                A8FFF7E5BCFFF0DDB1FFE2D2ACFF413E3AB10000000000000000050810599770
                16FFDBA939FFD7AE57FFD3A33CFFD19F2BFFC18300FFCC971CFFD09D26FFC78B
                00FFCA9311FFD19D22FFC08B0EFF3E3728B10000000000000000050811599A76
                1FFFDFB043FFCFA852FFC89F44FFDAB45CFFC68C00FFCF9D26FFD4A639FFBA85
                02FFC49117FFD9AB3BFFC59420FF413929B10000000000000000080B145CA883
                28FFDF9C00FF9A7419FF9A7B34FFD59500FFD19500FFD69D15FFD49809FF896D
                2BFFB28D35FFDC9E0DFFD09916FF4B4336B900000000000000000506092C5345
                26B3654D16BE736649DF736B5EE4614B15BB624C18BD614A17BC654E1AC07B72
                60E86C5F46D7624915BB644F21C126241F6A0000000000000000000000000000
                000000000000636469895D5D6096000000000000000000000000000000008080
                83BA3B3C415F0000000000000000000000000000000000000000000000000000
                0000000000003E3E3F4E4747474E000000000000000000000000000000005858
                586C2C2B2B2D00000000000000000000000000000000}
              PaintStyle = bpsGlyph
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              DateEditInicio = EdtInicio
              DateEditFim = EdtFim
            end
          end
          object EdtFuncionarioÎPessoasÎRAZAOSOCIAL: TcxTextEdit
            Left = 89
            Top = 95
            TabOrder = 2
            OnKeyDown = EdtFuncionarioÎPessoasÎRAZAOSOCIALKeyDown
            Width = 368
          end
          object EdtFuncionarioÎPessoas: TcxButtonEdit
            Left = 3
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
            Properties.OnChange = EdtCodFuncionarioPropertiesChange
            TabOrder = 1
            Width = 83
          end
          object cbTodosFuncionarios: TcxCheckBox
            Left = 0
            Top = 62
            Caption = 'Todos Funcionarios'
            TabOrder = 3
            OnClick = cbTodosFuncionariosClick
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Filtro Vazio'
          ImageIndex = 2
        end
        object Filtrodevedores: TTabSheet
          Caption = 'Filtrodevedores'
          ImageIndex = 3
          object cxLabel1: TcxLabel
            Left = 3
            Top = 12
            Caption = 'Relat'#243'rios de Devedores'
            Transparent = True
          end
          object BtnMarcarTodos: TcxButton
            Tag = 1
            Left = 3
            Top = 94
            Width = 20
            Height = 19
            Hint = 'Marcar todos'
            OptionsImage.ImageIndex = 17
            OptionsImage.Images = FrmPrincipal.ImgListBotoes16
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BtnMarcarTodosClick
          end
          object ListaTipoPessoa: TcxCheckListBox
            Left = 29
            Top = 94
            Width = 450
            Height = 156
            Items = <>
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Lucida Console'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
          end
          object EdtDevedorÎPessoas: TcxButtonEdit
            Left = 3
            Top = 280
            Properties.Buttons = <
              item
                Default = True
                Kind = bkText
              end
              item
                Kind = bkEllipsis
              end>
            Style.HotTrack = False
            TabOrder = 3
            Width = 59
          end
          object EdtDevedorÎPessoasÎRAZAOSOCIAL: TcxLabel
            Left = 65
            Top = 280
            AutoSize = False
            Style.HotTrack = False
            Transparent = True
            Height = 21
            Width = 422
          end
          object cxLabel3: TcxLabel
            Left = 3
            Top = 263
            Caption = 'C'#243'digo / Nome'
            Transparent = True
            Visible = False
          end
          object cxLabel4: TcxLabel
            Left = 29
            Top = 76
            Caption = 'Tipos de Pessoas'
            Transparent = True
          end
          object GroupBox4: TGroupBox
            Left = 131
            Top = 28
            Width = 346
            Height = 60
            Caption = 'Per'#237'odo de Vencimento'
            TabOrder = 7
            object DtInicioDevedores: TcxDateEdit
              Left = 12
              Top = 29
              Properties.Alignment.Horz = taCenter
              Style.HotTrack = False
              TabOrder = 0
              Width = 129
            end
            object DtFimDevedores: TcxDateEdit
              Left = 152
              Top = 29
              Properties.Alignment.Horz = taCenter
              Style.HotTrack = False
              TabOrder = 1
              Width = 129
            end
            object cxDateProfileButton2: TcxDateProfileButton
              Left = 284
              Top = 24
              Width = 25
              Height = 25
              Hint = 'Clique para selecionar um per'#237'odo'
              Caption = 'cxDateProfileButton1'
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000000000000030303280909
                0A890505058C09080A8B0C0C0D8B0F0F108B1111128B1110118B0D0D0D8B0D0D
                0D8A0F0E0F8A0808098A0808098E080808540000000000000000040404587C7A
                7BFF979698FF919092FF999799FF9C9A9BFF9A999AFFA5A3A5FFABAAACFFA2A1
                A3FFA09E9FFFB9B6B8FFC6C4C5FF3C3A3CAF000000000000000000000059A2A1
                A2FFE5E5E5FFDADAD9FFCFCFCFFFD0D0D0FFD5D5D4FFCDCDCDFFE0E0E0FFEFEF
                EFFFE1E1E1FFCFCDCEFFF3EFEFFF494749A70000000000000000000000599F9F
                9FFFE3E3E3FFE0E0E0FF6E6E6EFF767676FFE1E1E1FF505050FF292929FF5D5D
                5DFFB2B2B2FFE0E0E1FFC9C7C8FF454547A7000000000000000000000059A4A3
                A4FFEAEAEAFFE9E9E9FF5B5B5BFF636363FFF3F3F3FF949494FF0E0E0EFF8282
                82FFD0D0D0FFEAEAEAFFC3C2C3FF3A373AA8000000000000000000000059A8A7
                A8FFF2F2F2FFFAFAFAFF656565FF696969FFF0F0F0FFF4F4F4FF909090FF2B2B
                2BFFBDBDBDFFF4F4F4FFCFCFCFFF302F30AB000000000000000000000059B2B1
                B2FFE3E3E3FFA6A6A6FF5A5A5AFF6F6F6FFFF6F6F6FFE5E5E5FFFFFFFFFF8585
                85FF3C3C3CFFEFEFEFFFE1E0E1FF353435AE000000000000000000000059B7B7
                B7FFF1F1F1FF626262FF0A0A0AFF737373FFFFFFFFFF646464FF838383FF9B9B
                9BFF272727FFE7E7E7FFEDEDEDFF3D3D3DB0000000000000000000000059B9BB
                C0FFFFFFFFFFFFFFFFFF71747BFF8B8F97FFFFFFFFFFBCC0C8FF474B53FF4246
                4EFFA4A7AFFFFFFFFFFFF2F5FCFF404142B1000000000000000001030559B0A4
                8BFFF2E1B9FFF0DEB6FFEEDCB4FFE4D0A4FFEDDBB1FFF5E3BAFFEAD7ADFFE5D2
                A8FFF7E5BCFFF0DDB1FFE2D2ACFF413E3AB10000000000000000050810599770
                16FFDBA939FFD7AE57FFD3A33CFFD19F2BFFC18300FFCC971CFFD09D26FFC78B
                00FFCA9311FFD19D22FFC08B0EFF3E3728B10000000000000000050811599A76
                1FFFDFB043FFCFA852FFC89F44FFDAB45CFFC68C00FFCF9D26FFD4A639FFBA85
                02FFC49117FFD9AB3BFFC59420FF413929B10000000000000000080B145CA883
                28FFDF9C00FF9A7419FF9A7B34FFD59500FFD19500FFD69D15FFD49809FF896D
                2BFFB28D35FFDC9E0DFFD09916FF4B4336B900000000000000000506092C5345
                26B3654D16BE736649DF736B5EE4614B15BB624C18BD614A17BC654E1AC07B72
                60E86C5F46D7624915BB644F21C126241F6A0000000000000000000000000000
                000000000000636469895D5D6096000000000000000000000000000000008080
                83BA3B3C415F0000000000000000000000000000000000000000000000000000
                0000000000003E3E3F4E4747474E000000000000000000000000000000005858
                586C2C2B2B2D00000000000000000000000000000000}
              PaintStyle = bpsGlyph
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              DateEditInicio = DtInicioDevedores
              DateEditFim = DtFimDevedores
            end
            object cxLabel2: TcxLabel
              Left = 11
              Top = 13
              Caption = 'In'#237'cio'
              Transparent = True
            end
            object cxLabel5: TcxLabel
              Left = 152
              Top = 13
              Caption = 'Fim'
              Transparent = True
            end
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 2
        Top = 8
        Width = 263
        Height = 361
        Caption = 'Relat'#243'rios'
        TabOrder = 1
        DesignSize = (
          263
          361)
        object ListaRelatorios: TListBox
          Left = 6
          Top = 16
          Width = 250
          Height = 338
          Anchors = [akLeft, akTop, akRight, akBottom]
          ItemHeight = 13
          Items.Strings = (
            'Funcion'#225'rio - Controle de Ponto'
            'Produto - Entradas e Sa'#237'das'
            'Produto - Grade de Corte')
          Sorted = True
          TabOrder = 0
          OnClick = ListaRelatoriosClick
        end
      end
      object BtnGerar: TBitBtn
        Left = 341
        Top = 380
        Width = 165
        Height = 25
        Caption = 'Gerar Relat'#243'rio'
        TabOrder = 2
        OnClick = BtnGerarClick
      end
      object BtnFechar: TBitBtn
        Left = 548
        Top = 380
        Width = 165
        Height = 25
        Caption = 'Fechar'
        TabOrder = 3
        OnClick = BtnFecharClick
      end
    end
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    Left = 346
    Top = 259
    Bitmap = {
      494C010101000500040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000E4276004392C400468CBA004A
      8CBB004D8BBA00518BBA00548BB9025689B8025589B8004F88B7004B88B60046
      87B6004286B5003E84B3003B89BC000C3C6E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000010406C0295EEFF03B4FEFE00B9
      FFFF00C3FFFF00CDFFFF00D5FFFF00D8FFFF00D5FFFF00D0FFFF00C6FFFF00BD
      FFFF00B2FFFF01AFFFFF0087E8FF00082C520000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000002045099C610B3FFFF0FB4
      F8FB05BBFCFD00C0FDFD00C6FDFD5BDDFDFD54DBFDFD00C2FDFD01BEFDFD00B4
      FDFD00AAFAFA01A4FDFF00397CAA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000A2A4E1798E8FF20BC
      FEFE20BDFBFF13C1FDFF00BFFFFFD9F4FEFFD0EEFCFF00BAFFFF00B8FFFF00AF
      FFFF01AFFFFF007FDDFB00001432000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000010101000000000F498BBA2BB7
      FCFF2DB9F8FD32C1FAFF22C0FBFF53C6F9FF3FBDF9FF00B2FFFF02B0FFFF00A8
      FDFD009EFAFF002E6A9900000000000102020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000001020000000000051C3D2C95
      E3FF3CBFFEFF3BBBF9FF3DBFF9FFE3F6FAFFB6E7FCFF00A7FFFF00A4FFFF01A7
      FFFF006ECCEF0000092100000000000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000102020200000000163D
      79A745B5F9FF48B8F8FD48BBF9FFEAF7F9FFD3EDF8FF3AB5FAFF14A4FCFC0091
      F6FF012055810000000000010202000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000101000000000000
      112D3E8FD6F758C1FEFF54B9F8FFE9F6F9FFD1EBF9FF57B9F7FE61C5FEFF206C
      BAE1000000120000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010102020000
      0000193567935EBBF6FF62BFF8FDEEF8FAFFD8EEF8FF62C1FAFD65B6EFFF121E
      436C000000000001010200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      00000000091E4D8BC9ED72CCFFFFC8E5F6FFB9DEF5FE74CCFEFF4471A8D20000
      0008000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000002
      0303000000001A2C557F76C2F4FF78C7F8FD7DCCFBFE75B9EDFF0E1634580000
      0000000101020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000001125887BCE18FD7FFFF8FD4FDFF476899C2000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010202000000001823456C94D0F7FF8CC3EFFF0C102948000000000001
      0102000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000055979ADD9496492BC00000000010101010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000C210000091B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF0000000000000000000000000000
      0000000000000000000100000000000080010000000000004002000000000000
      4002000000000000A005000000000000A007000000000000D00B000000000000
      D00F000000000000E817000000000000F83F000000000000F42F000000000000
      FC5F000000000000FE7F00000000000000000000000000000000000000000000
      000000000000}
  end
  object WREventosCadastro1: TWREventosCadastro
    OnPreencheVariaveisImpressaoPersonalizada = WREventosCadastro1PreencheVariaveisImpressaoPersonalizada
    Versao_Configuracao = 0
    Empresa = 0
    ValidaPadraoDatela = True
    UsaCadastroPocket = False
    Left = 138
    Top = 176
  end
end
