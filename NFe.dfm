object FrmNFe: TFrmNFe
  Left = 244
  Top = 110
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = 'Configura'#231#245'es do Certificado e Nota Fiscal'
  ClientHeight = 458
  ClientWidth = 289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 288
    Top = 0
    Width = 1
    Height = 458
    Align = alClient
    TabOrder = 1
    object PageControl2: TPageControl
      Left = 0
      Top = 163
      Width = 568
      Height = 293
      ActivePage = Dados
      TabOrder = 1
      object TabSheet5: TTabSheet
        Caption = 'Respostas'
        object MemoResp: TMemo
          Left = 0
          Top = 0
          Width = 560
          Height = 265
          Align = alClient
          TabOrder = 0
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'XML Resposta'
        ImageIndex = 1
        object WBResposta: TWebBrowser
          Left = 0
          Top = 0
          Width = 560
          Height = 265
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 1
          ExplicitTop = -3
          ExplicitHeight = 235
          ControlData = {
            4C000000E1390000631B00000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'Log'
        ImageIndex = 2
        object memoLog: TMemo
          Left = 0
          Top = 0
          Width = 560
          Height = 265
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'NFe'
        ImageIndex = 3
        object trvwNFe: TTreeView
          Left = 0
          Top = 0
          Width = 560
          Height = 265
          Align = alClient
          Indent = 19
          TabOrder = 0
        end
      end
      object TabSheet10: TTabSheet
        Caption = 'Retorno Completo WS'
        ImageIndex = 4
        object memoRespWS: TMemo
          Left = 0
          Top = 0
          Width = 560
          Height = 265
          Align = alClient
          TabOrder = 0
        end
      end
      object Dados: TTabSheet
        Caption = 'Dados'
        ImageIndex = 5
        object MemoDados: TMemo
          Left = 0
          Top = 0
          Width = 560
          Height = 265
          Align = alClient
          TabOrder = 0
        end
      end
    end
    object PageControl3: TPageControl
      Left = 0
      Top = 0
      Width = 569
      Height = 166
      ActivePage = TabSheet11
      TabOrder = 0
      object TabSheet11: TTabSheet
        Caption = 'NFe'
        object btnImprimir: TButton
          Left = 192
          Top = 110
          Width = 177
          Height = 25
          Caption = 'Imprimir DANFE'
          TabOrder = 13
          OnClick = btnImprimirClick
        end
        object btnConsultar: TButton
          Left = 8
          Top = 58
          Width = 177
          Height = 25
          Caption = 'Consultar carregando XML'
          TabOrder = 6
          OnClick = btnConsultarClick
        end
        object btnValidarXML: TButton
          Left = 377
          Top = 32
          Width = 177
          Height = 25
          Caption = 'Validar XML'
          TabOrder = 5
          OnClick = btnValidarXMLClick
        end
        object btnStatusServ: TButton
          Left = 9
          Top = 6
          Width = 177
          Height = 25
          Caption = 'Status Servi'#231'o'
          TabOrder = 0
          OnClick = btnStatusServClick
        end
        object btnCancNF: TButton
          Left = 8
          Top = 84
          Width = 177
          Height = 25
          Caption = 'Cancelamento NFe com XML'
          TabOrder = 9
          OnClick = btnCancNFClick
        end
        object btnInutilizar: TButton
          Left = 192
          Top = 6
          Width = 177
          Height = 25
          Caption = 'Inutilizar Numera'#231#227'o'
          TabOrder = 1
          OnClick = btnInutilizarClick
        end
        object btnConsCad: TButton
          Left = 192
          Top = 58
          Width = 177
          Height = 25
          Caption = 'Consulta Cadastro'
          TabOrder = 7
          OnClick = btnConsCadClick
        end
        object btnGerarPDF: TButton
          Left = 192
          Top = 84
          Width = 177
          Height = 25
          Caption = 'Gerar PDF'
          TabOrder = 10
          OnClick = btnGerarPDFClick
        end
        object btnEnviarEmail: TButton
          Left = 377
          Top = 58
          Width = 177
          Height = 25
          Caption = 'Enviar NFe Email'
          TabOrder = 8
          OnClick = btnEnviarEmailClick
        end
        object btnConsultarRecibo: TButton
          Left = 192
          Top = 32
          Width = 177
          Height = 25
          Caption = 'Consultar Recibo Lote'
          TabOrder = 4
          OnClick = btnConsultarReciboClick
        end
        object btnImportarXML: TButton
          Left = 377
          Top = 6
          Width = 177
          Height = 25
          Caption = 'Importar XML'
          TabOrder = 2
          OnClick = btnImportarXMLClick
        end
        object btnCancelarChave: TButton
          Left = 8
          Top = 110
          Width = 177
          Height = 25
          Caption = 'Cancelamento NFe pela Chave'
          TabOrder = 12
          OnClick = btnCancNFClick
        end
        object Button1: TButton
          Left = 8
          Top = 32
          Width = 177
          Height = 25
          Caption = 'Recuperar XML Pela Chave'
          TabOrder = 3
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 377
          Top = 84
          Width = 177
          Height = 25
          Caption = 'Carta de Corre'#231#227'o'
          TabOrder = 11
          OnClick = Button2Click
        end
        object Button5: TButton
          Left = 377
          Top = 110
          Width = 177
          Height = 25
          Caption = 'Download NFe pela Chave'
          TabOrder = 14
          OnClick = Button5Click
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Web Service'
        ImageIndex = 1
        object GroupBox4: TGroupBox
          Left = 0
          Top = 0
          Width = 266
          Height = 138
          Align = alLeft
          Caption = 'WebService'
          TabOrder = 0
          object Label6: TLabel
            Left = 8
            Top = 16
            Width = 121
            Height = 13
            Caption = 'Selecione UF de Destino:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 203
            Top = 20
            Width = 43
            Height = 13
            Caption = 'Time Out'
          end
          object cbUF: TComboBox
            Left = 8
            Top = 32
            Width = 189
            Height = 24
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemIndex = 0
            ParentFont = False
            TabOrder = 0
            Text = 'AC'
            Items.Strings = (
              'AC'
              'AL'
              'AP'
              'AM'
              'BA'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MT'
              'MS'
              'MG'
              'PA'
              'PB'
              'PR'
              'PE'
              'PI'
              'RJ'
              'RN'
              'RS'
              'RO'
              'RR'
              'SC'
              'SP'
              'SE'
              'TO')
          end
          object seTimeOut: TSpinEdit
            Left = 202
            Top = 32
            Width = 55
            Height = 22
            Increment = 10
            MaxValue = 999999
            MinValue = 1000
            TabOrder = 1
            Value = 5000
          end
          object gbxRetornoEnvio: TGroupBox
            Left = 8
            Top = 57
            Width = 249
            Height = 77
            Caption = 'Retorno de Envio de NFe'
            TabOrder = 2
            object Label5: TLabel
              Left = 93
              Top = 30
              Width = 50
              Height = 13
              Caption = 'Tentativas'
            end
            object Label20: TLabel
              Left = 176
              Top = 30
              Width = 41
              Height = 13
              Caption = 'Intervalo'
            end
            object Label21: TLabel
              Left = 8
              Top = 30
              Width = 43
              Height = 13
              Hint = 
                'Aguardar quantos segundos para primeira consulta de retorno de e' +
                'nvio'
              Caption = 'Aguardar'
            end
            object cbxAjustarAut: TCheckBox
              Left = 8
              Top = 14
              Width = 234
              Height = 17
              Caption = 'Ajustar Automaticamente prop. "Aguardar"'
              TabOrder = 0
            end
            object edtTentativas: TEdit
              Left = 93
              Top = 46
              Width = 57
              Height = 21
              TabOrder = 2
            end
            object edtIntervalo: TEdit
              Left = 176
              Top = 46
              Width = 57
              Height = 21
              TabOrder = 3
            end
            object edtAguardar: TEdit
              Left = 8
              Top = 46
              Width = 57
              Height = 21
              Hint = 
                'Aguardar quantos segundos para primeira consulta de retorno de e' +
                'nvio'
              TabOrder = 1
            end
          end
        end
        object gbProxy: TGroupBox
          Left = 272
          Top = 0
          Width = 265
          Height = 98
          Caption = 'Proxy'
          TabOrder = 1
          object Label8: TLabel
            Left = 8
            Top = 16
            Width = 22
            Height = 13
            Caption = 'Host'
          end
          object Label9: TLabel
            Left = 208
            Top = 16
            Width = 25
            Height = 13
            Caption = 'Porta'
          end
          object Label10: TLabel
            Left = 8
            Top = 56
            Width = 36
            Height = 13
            Caption = 'Usu'#225'rio'
          end
          object Label11: TLabel
            Left = 138
            Top = 56
            Width = 31
            Height = 13
            Caption = 'Senha'
          end
          object edtProxyHost: TEdit
            Left = 9
            Top = 32
            Width = 193
            Height = 21
            TabOrder = 0
          end
          object edtProxyPorta: TEdit
            Left = 208
            Top = 32
            Width = 50
            Height = 21
            TabOrder = 1
          end
          object edtProxyUser: TEdit
            Left = 8
            Top = 72
            Width = 123
            Height = 21
            TabOrder = 2
          end
          object edtProxySenha: TEdit
            Left = 135
            Top = 72
            Width = 123
            Height = 21
            PasswordChar = '*'
            TabOrder = 3
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 288
    Height = 458
    Align = alLeft
    TabOrder = 0
    object Label25: TLabel
      Left = 15
      Top = 122
      Width = 79
      Height = 13
      Caption = 'N'#250'mero de S'#233'rie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lSSLLib1: TLabel
      Left = 18
      Top = 166
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'SSLType'
      Color = clBtnFace
      ParentColor = False
      Transparent = True
    end
    object btnSalvarConfig: TBitBtn
      Left = 8
      Top = 424
      Width = 133
      Height = 28
      Caption = 'Confirmar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000010101080F2E08780000000E00000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000091043109A12A133FF175F18CD040C032C000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000070E320D7F149F3AFF0EBA56FF12AC45FF15621CCD0000000E0000
        0001000000000000000000000000000000000000000000000000000000010000
        00091047189A16A546FF17BE68FF1EB76FFF19B866FF15BA5AFF146723CD040D
        052B000000010000000000000000000000000000000000000000010101080C36
        127E18A950FF1CC573FF26C17CFF3AD9AAFF2BC98CFF20C274FF18B85FFF1369
        28CD0000000F00000001000000000000000000000000000000000D4F1E9A19B2
        5EFF24D188FF2BC987FF38DBA9FF24C279FF37DAA6FF36D6A2FF27CC85FF1BC5
        74FF136F2DCD040F072B000000010000000000000000000000000D4E1E9219B6
        66FF39DDA6FF3CDFACFF21B66BFF0C4E1F8E1CA555FF3CDDAAFF35D49BFF2DD3
        90FF1DC273FF117332CD0000000F000000010000000000000000000000030A3E
        197423BC75FF23BB73FF0B3D187100000000041F0C39138E46E341E0AEFF40E0
        A9FF35DFA0FF23D189FF117738CD0410072B0000000100000000000000000000
        00010C54268E0C54268E000000000000000000000000041F0C391DAE62FF47E5
        B3FF45E6B0FF39E5A8FF21CC85FF117A3CCD0000000F00000001000000000000
        000000000000000000000000000000000000000000000000000004210E391296
        52E34BE8BBFF4EEEBCFF3FECB1FF28DA99FF107C41CD0311082C000000000000
        0000000000000000000000000000000000000000000000000000000000000422
        10391DB66FFF50EBC0FF4DF0BDFF41F1B9FF1ED595FF0F8046CD000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000004231239119C5CE350EEC3FF40EFBDFF119D5DE304231239000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000042412391EBD7BFF1CBD7AFF0424123900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000002251239022512390000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 0
      OnClick = btnSalvarConfigClick
    end
    object btnFecharConfig: TBitBtn
      Left = 147
      Top = 424
      Width = 133
      Height = 28
      Caption = 'Fechar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00004242768F3E3E8BAF0F0F0F10000000000000000000000000000000000000
        0000000000000F0F0F10494995AF4D4D808F0000000000000000000000004040
        819F0404B7FF0707BAFF33339DCF0F0F0F100000000000000000000000000000
        00000F0F0F103F3FA8CF3636EEFF3E3EF7FF5050909F000000004F4F7A8F0505
        B5FF0404B7FF0707BAFF0A0ABDFF33339ECF0F0F0F1000000000000000000F0F
        0F103C3CA5CF2D2DE4FF3434ECFF3939F2FF3B3BF4FF4D4D808F565693AF5252
        CEFF0707B7FF0606B9FF0909BCFF0C0CC0FF3434A0CF0F0F0F100F0F0F103B3B
        A4CF2424DAFF2A2AE0FF2F2FE6FF3333EBFF3434ECFF494995AF0F0F0F105353
        A8CF5353CFFF0909B9FF0808BBFF0B0BBFFF0F0FC3FF3535A0CF3737A2CF1C1C
        D1FF2121D6FF2525DBFF2929E0FF2C2CE3FF3F3FA8CF0F0F0F10000000000F0F
        0F105353A8CF5353D0FF0A0ABBFF0A0ABEFF0D0DC1FF1111C5FF1515C9FF1919
        CEFF1D1DD2FF2020D6FF2323D9FF3C3CA5CF0F0F0F1000000000000000000000
        00000F0F0F105454A8CF5454D0FF0C0CBCFF0C0CBFFF0F0FC3FF1212C6FF1515
        CAFF1818CDFF1C1CD1FF3A3AA4CF0F0F0F100000000000000000000000000000
        0000000000000F0F0F105454A8CF4B4BCFFF0A0ABDFF0C0CC0FF0F0FC3FF1212
        C6FF1414C9FF3737A1CF0F0F0F10000000000000000000000000000000000000
        0000000000000F0F0F103E3EA0CF2C2CC4FF1B1BC1FF0C0CBEFF0C0CC0FF0E0E
        C2FF1111C5FF3535A0CF0F0F0F10000000000000000000000000000000000000
        00000F0F0F103F3FA0CF3232C4FF3030C5FF2E2EC5FF2D2DC6FF2626C5FF1E1E
        C4FF1D1DC5FF1D1DC6FF3C3CA1CF0F0F0F100000000000000000000000000F0F
        0F103F3FA0CF3737C4FF3434C4FF3232C4FF3030C5FF2E2EC5FF6666D7FF2F2F
        C7FF2C2CC7FF2C2CC8FF2B2BC9FF3C3CA0CF0F0F0F10000000000F0F0F104242
        A1CF3C3CC5FF3939C5FF3737C4FF3434C4FF3232C4FF3E3EA0CF5959AACF6E6E
        D9FF3030C6FF2D2DC6FF2C2CC6FF2C2CC7FF3E3EA0CF0F0F0F105D5D96AF5252
        CCFF3F3FC6FF3C3CC5FF3939C5FF3737C4FF3F3FA0CF0F0F0F100F0F0F105A5A
        AACF6F6FD8FF3131C5FF2E2EC5FF2E2EC5FF2E2EC5FF47478DAF5D5D808F9898
        E6FF5151CCFF3F3FC6FF3C3CC5FF3F3FA0CF0F0F0F1000000000000000000F0F
        0F105A5AAACF7070D8FF3333C5FF3030C4FF3030C4FF4A4A788F000000006363
        8E9F9898E6FF5252CCFF4242A1CF0F0F0F100000000000000000000000000000
        00000F0F0F105A5AAACF7272D8FF3636C4FF4B4B849F00000000000000000000
        00005D5D808F5D5D96AF0F0F0F10000000000000000000000000000000000000
        0000000000000F0F0F105C5C95AF55557C8F0000000000000000}
      TabOrder = 1
      OnClick = btnFecharConfigClick
    end
    object rgTipoAmb: TRadioGroup
      Left = 5
      Top = 8
      Width = 184
      Height = 52
      Caption = 'Selecione o Ambiente de Destino'
      Columns = 2
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 1
      Items.Strings = (
        'Produ'#231#227'o'
        'Homologa'#231#227'o')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object Button3: TButton
      Left = 197
      Top = 9
      Width = 85
      Height = 49
      Caption = 'Status Servi'#231'o'
      ImageAlignment = iaTop
      ImageIndex = 54
      Images = FrmPrincipal.cxImageList_Pequena
      PressedImageIndex = 10
      TabOrder = 3
      OnClick = btnStatusServClick
    end
    object lblCertNome: TcxLabel
      Left = 13
      Top = 82
      AutoSize = False
      Caption = 'Empresa Teste Ltda'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 269
    end
    object lblCertValidade: TcxLabel
      Left = 13
      Top = 100
      AutoSize = False
      Caption = '01/01/2000'
      ParentFont = False
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.Shadow = False
      Style.TextColor = 33023
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 103
    end
    object lblCertStatus: TcxLabel
      Left = 13
      Top = 64
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = clMenuHighlight
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 269
    end
    object lblCertNumeroSerie: TcxLabel
      Left = 13
      Top = 131
      AutoSize = False
      Caption = 'ABCDEF1234567890'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 269
    end
    object cbSSLType: TComboBox
      Left = 68
      Top = 158
      Width = 204
      Height = 21
      Hint = 'Depende de configura'#231#227'o de  SSL.HttpLib'
      Style = csDropDownList
      TabOrder = 8
      OnChange = cbSSLTypeChange
    end
    object btnAvancado: TButton
      Left = 160
      Top = 200
      Width = 112
      Height = 41
      Caption = 'Avan'#231'ado'
      ImageAlignment = iaTop
      Images = FrmPrincipal.cxImageList_Pequena
      PressedImageIndex = 10
      TabOrder = 9
      OnClick = btnAvancadoClick
    end
    object Button6: TButton
      Left = 18
      Top = 200
      Width = 111
      Height = 41
      Caption = 'Cadastro de Empresa (Certificado)'
      ImageAlignment = iaTop
      Images = FrmPrincipal.cxImageList_Pequena
      PressedImageIndex = 10
      TabOrder = 10
      WordWrap = True
      OnClick = Button6Click
    end
    object btnProximoNumero: TcxButton
      Left = 18
      Top = 247
      Width = 254
      Height = 42
      Caption = 'Pr'#243'ximo N'#250'mero'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.SourceHeight = 18
      OptionsImage.Glyph.SourceWidth = 18
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
        31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
        4331433B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23
        3732373237323B7D262331333B262331303B2623393B2E426C75657B66696C6C
        3A233131373744373B7D262331333B262331303B2623393B2E57686974657B66
        696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
        6E7B66696C6C3A233033394332333B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
        7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
        7374327B6F7061636974793A302E32353B7D262331333B262331303B2623393B
        2E7374337B66696C6C3A234646423131353B7D3C2F7374796C653E0D0A3C672F
        3E0D0A3C672069643D224175746F6D6174696355706461746573223E0D0A0909
        3C7061746820636C6173733D22477265656E2220643D224D31352E362C32352E
        314C31342E362C3235632D312D302E322D312E362D312D312E362D32762D312E
        31632D302E332C302D302E372C302E312D312C302E31632D342E342C302D382D
        332E362D382D3863302D342E342C332E362D382C382D3820202623393B262339
        3B63322E322C302C342E322C302E392C352E362C322E344C31342C313268352E
        3748323268312E3848323456326C2D332E352C332E354331382E332C332E332C
        31352E332C322C31322C3243352E342C322C302C372E342C302C313463302C36
        2E362C352E342C31322C31322C313220202623393B2623393B63312E312C302C
        322E322D302E322C332E332D302E354C31352E362C32352E317A222F3E0D0A09
        093C7061746820636C6173733D22426C75652220643D224D33312C3233762D32
        6C2D322E322D302E34632D302E322D302E362D302E342D312E332D302E382D31
        2E386C312E332D312E386C2D312E342D312E346C2D312E382C312E33632D302E
        352D302E332D312E322D302E362D312E382D302E374C32342C3134682D322020
        2623393B2623393B6C2D302E342C322E32632D302E362C302E322D312E332C30
        2E342D312E382C302E374C31382C31352E364C31362E362C31376C312E332C31
        2E38632D302E332C302E352D302E362C312E322D302E382C312E384C31352C32
        3176326C322E322C302E3463302E322C302E362C302E342C312E332C302E382C
        312E3820202623393B2623393B4C31362E372C32376C312E342C312E346C312E
        382D312E3363302E352C302E332C312E322C302E362C312E382C302E374C3232
        2C333068326C302E342D322E3263302E362D302E322C312E332D302E342C312E
        382D302E376C312E382C312E336C312E342D312E346C2D312E332D312E382020
        2623393B2623393B63302E332D302E352C302E362D312E322C302E382D312E38
        4C33312C32337A204D32332C3234632D312E312C302D322D302E392D322D3273
        302E392D322C322D3273322C302E392C322C325332342E312C32342C32332C32
        347A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      TabOrder = 11
      WordWrap = True
      OnClick = btnProximoNumeroClick
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 61
    Top = 293
  end
  object MenuCCe: TPopupMenu
    Left = 61
    Top = 321
    object Emitir1: TMenuItem
      Caption = 'Emitir'
      OnClick = Emitir1Click
    end
    object Reimprimir1: TMenuItem
      Caption = 'Reimprimir'
      OnClick = Reimprimir1Click
    end
  end
  object ACBrNFe1: TACBrNFe
    OnStatusChange = ACBrNFe1StatusChange
    OnGerarLog = ACBrNFe1GerarLog
    Configuracoes.Geral.SSLLib = libCustom
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinINet
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormaEmissao = teSVCRS
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.Salvar = False
    Configuracoes.Arquivos.SepararPorCNPJ = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.Arquivos.SalvarEvento = True
    Configuracoes.Arquivos.SalvarApenasNFeProcessadas = True
    Configuracoes.Arquivos.NormatizarMunicipios = True
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 5000
    Configuracoes.WebServices.Tentativas = 20
    Configuracoes.WebServices.IntervaloTentativas = 5000
    Configuracoes.WebServices.Salvar = True
    Configuracoes.WebServices.TimeOut = 35000
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFEFR1
    Left = 89
    Top = 293
  end
  object ACBrNFeDANFEFR1: TACBrNFeDANFEFR
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetMascara
    CasasDecimais.qCom = 3
    CasasDecimais.vUnCom = 8
    CasasDecimais.MaskqCom = '0.00#'
    CasasDecimais.MaskvUnCom = '0.00######'
    ACBrNFe = ACBrNFe1
    EspessuraBorda = 1
    BorderIcon = [biSystemMenu, biMinimize, biMaximize]
    ThreadSafe = False
    Left = 117
    Top = 293
  end
  object ACBrNFeDANFeRL1: TACBrNFeDANFeRL
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ExibeCampoFatura = False
    Left = 145
    Top = 293
  end
  object ACBrNFeDANFCeFortesA41: TACBrNFeDANFCeFortesA4
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 10.000000000000000000
    MargemSuperior = 10.000000000000000000
    MargemEsquerda = 10.000000000000000000
    MargemDireita = 10.000000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    TipoDANFE = tiSemGeracao
    FormularioContinuo = True
    Left = 173
    Top = 293
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 89
    Top = 321
  end
  object ACBrNFeDANFCEFR1: TACBrNFeDANFCEFR
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    TipoDANFE = tiNFCe
    FormularioContinuo = True
    BorderIcon = [biSystemMenu, biMinimize, biMaximize]
    ThreadSafe = False
    Left = 118
    Top = 321
  end
  object ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    FormularioContinuo = True
    FonteLinhaItem.Charset = DEFAULT_CHARSET
    FonteLinhaItem.Color = clWindowText
    FonteLinhaItem.Height = -9
    FonteLinhaItem.Name = 'Lucida Console'
    FonteLinhaItem.Style = []
    Left = 146
    Top = 321
  end
end
