inherited Frame_ConsuBoleto: TFrame_ConsuBoleto
  OnExit = FrameExit
  object imgFundo: TImage [0]
    Left = 1
    Top = 174
    Width = 418
    Height = 352
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000540000
      005408060000001C6B10C1000000097048597300000B1200000B1201D2DD7EFC
      000000C44944415478DAEDD0310100301003A1BCC0FAB753138C87046EDB5B98
      5BA154A158A158A158A158A158A158A158A158A158A158A158A158A158A158A1
      58A158A158A158A158A158A158A158A158A158A158A158A158A158A158A158A1
      58A158A158A158A158A158A158A158A158A158A158A158A158A158A158A158A1
      58A158A158A158A158A158A158A158A158A158A158A158A158A158A158A158A1
      58A158A158A158A158A158A158A158A158A158A158A158A158A158A158A158A1
      58A158A158A1D80743E8199997151F8C0000000049454E44AE426082}
    Stretch = True
    Transparent = True
  end
  inherited pnlImpressoes: TPanel
    TabOrder = 6
  end
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      Height = 518
      ExplicitHeight = 518
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        OnCustomDrawCell = GridConsultaDBTableView1CustomDrawCell
        DataController.KeyFieldNames = 'CODIGO;CODPEDIDO;CODEMPRESA'
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'Valor_Sem_Registro'
            Column = GridConsultaDBTableView1Valor_Sem_Registro
          end
          item
            Kind = skSum
            FieldName = 'Valor_Em_Aberto'
            Column = GridConsultaDBTableView1Valor_Em_Aberto
          end
          item
            Kind = skSum
            FieldName = 'Valor_Cancelado'
            Column = GridConsultaDBTableView1Valor_Cancelado
          end
          item
            Kind = skSum
            FieldName = 'Valor_Pago'
            Column = GridConsultaDBTableView1Valor_Pago
          end
          item
            Kind = skSum
            FieldName = 'Valor_Vencido'
            Column = GridConsultaDBTableView1Valor_Vencido
          end
          item
            Kind = skSum
            FieldName = 'Valor_Expirado'
            Column = GridConsultaDBTableView1Valor_Expirado
          end>
        DataController.Summary.OnAfterSummary = GridConsultaDBTableView1DataControllerSummaryAfterSummary
        OptionsSelection.MultiSelect = True
        ConditionalFormatting = {
          020000000A000000360000005400640078005300700072006500610064005300
          680065006500740043006F006E0064006900740069006F006E0061006C004600
          6F0072006D0061007400740069006E006700520075006C006500440075007000
          6C0069006300610074006500560061006C007500650073006D00000008000000
          0000000008000000FFFFFF7F0001FF0000000B00000007000000430061006C00
          6900620072006900000000000000200000002000000000200000000020000000
          002000000000200007000000470045004E004500520041004C00000000000002
          0000000000000000013600000054006400780053007000720065006100640053
          00680065006500740043006F006E0064006900740069006F006E0061006C0046
          006F0072006D0061007400740069006E006700520075006C0065004400750070
          006C0069006300610074006500560061006C007500650073006D000000090000
          000000000009000000FFFFFF7F00010000FF000B00000007000000430061006C
          0069006200720069000000000000002000000020000000002000000000200000
          00002000000000200007000000470045004E004500520041004C000000000000
          02000000000000000001}
        object GridConsultaDBTableView1SITUACAO: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'SITUACAO'
          Width = 98
        end
        object CadGridCadastrosDBTableView1BOLETO_NOSSO_NR: TcxGridDBColumn
          Caption = 'Boleto Nosso N'#250'mero'
          DataBinding.FieldName = 'BOLETO_NOSSO_NR'
          Width = 130
        end
        object CadGridCadastrosDBTableView1DOCUMENTO: TcxGridDBColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'DOCUMENTO'
          Width = 100
        end
        object CadGridCadastrosDBTableView1PESSOA_RESPONSAVEL_TIPO: TcxGridDBColumn
          Caption = 'Tipo Respons'#225'vel'
          DataBinding.FieldName = 'PESSOA_RESPONSAVEL_TIPO'
          Visible = False
          Width = 27
        end
        object CadGridCadastrosDBTableView1RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Raz'#227'o Social'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Width = 440
        end
        object CadGridCadastrosDBTableView1VENCTO: TcxGridDBColumn
          Caption = 'Vencto'
          DataBinding.FieldName = 'VENCTO'
          SortIndex = 0
          SortOrder = soDescending
          Width = 119
        end
        object CadGridCadastrosDBTableView1VALOR: TcxGridDBColumn
          Caption = 'R$ Valor'
          DataBinding.FieldName = 'VALOR'
          Visible = False
          Width = 120
        end
        object CadGridCadastrosDBTableView1DIFERENCA: TcxGridDBColumn
          Caption = 'Diferen'#231'a'
          DataBinding.FieldName = 'DIFERENCA'
          Visible = False
          Width = 55
        end
        object CadGridCadastrosDBTableView1DESCONTO: TcxGridDBColumn
          Caption = 'R$ Desconto'
          DataBinding.FieldName = 'DESCONTO'
          Width = 100
        end
        object CadGridCadastrosDBTableView1JUROS: TcxGridDBColumn
          Caption = 'R$ Juros'
          DataBinding.FieldName = 'JUROS'
          Width = 80
        end
        object CadGridCadastrosDBTableView1Total: TcxGridDBColumn
          Caption = 'R$ Total'
          DataBinding.FieldName = 'Total'
          Width = 120
        end
        object CadGridCadastrosDBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          Visible = False
          Width = 112
        end
        object CadGridCadastrosDBTableView1DATAPAGTO: TcxGridDBColumn
          Caption = 'Dt. Pagto'
          DataBinding.FieldName = 'DATAPAGTO'
          DateTimeGrouping = dtgByDate
          Width = 100
        end
        object CadGridCadastrosDBTableView1DESCRICAOCONTA: TcxGridDBColumn
          Caption = 'Conta'
          DataBinding.FieldName = 'DESCRICAOCONTA'
          Width = 240
        end
        object GridConsultaDBTableView1TIPO_FINANCEIRO: TcxGridDBColumn
          Caption = 'A Receber/Recebido'
          DataBinding.FieldName = 'TIPO_FINANCEIRO'
        end
        object CadGridCadastrosDBTableView1STATUS: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'STATUS'
          Width = 124
        end
        object CadGridCadastrosDBTableView1OCORRENCIA: TcxGridDBColumn
          Caption = 'Ocorr'#234'ncia'
          DataBinding.FieldName = 'OCORRENCIA'
          Options.Editing = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1DT_CREDITO: TcxGridDBColumn
          Caption = 'Dt. Cr'#233'dito'
          DataBinding.FieldName = 'DT_CREDITO'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1CODPEDIDO: TcxGridDBColumn
          Caption = 'C'#243'd. Pedido'
          DataBinding.FieldName = 'CODPEDIDO'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1CODEMPRESA: TcxGridDBColumn
          Caption = 'C'#243'd. Empresa'
          DataBinding.FieldName = 'CODEMPRESA'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1DATA: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'DATA'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1DT_OCORRENCIA: TcxGridDBColumn
          Caption = 'Dt. Ocorr'#234'ncia'
          DataBinding.FieldName = 'DT_OCORRENCIA'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1VALOR_CREDITO: TcxGridDBColumn
          Caption = 'R$ Cr'#233'dito'
          DataBinding.FieldName = 'VALOR_CREDITO'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1DESPESA_COBRANCA: TcxGridDBColumn
          Caption = 'Despesa Cobran'#231'a'
          DataBinding.FieldName = 'DESPESA_COBRANCA'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1CARTEIRA: TcxGridDBColumn
          Caption = 'Carteira'
          DataBinding.FieldName = 'CARTEIRA'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1DEMONSTRATIVO: TcxGridDBColumn
          Caption = 'Demonstrativo'
          DataBinding.FieldName = 'DEMONSTRATIVO'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1EMISSAO: TcxGridDBColumn
          Caption = 'Emiss'#227'o'
          DataBinding.FieldName = 'EMISSAO'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1PROTESTO: TcxGridDBColumn
          Caption = 'Protesto'
          DataBinding.FieldName = 'PROTESTO'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1TIPOOCORRENCIA: TcxGridDBColumn
          Caption = 'Tipo Ocorr'#234'ncia'
          DataBinding.FieldName = 'TIPOOCORRENCIA'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1ACEITE: TcxGridDBColumn
          Caption = 'Aceite'
          DataBinding.FieldName = 'ACEITE'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Dt. Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1PESSOA_RESPONSAVEL_CODIGO: TcxGridDBColumn
          Caption = 'Respons'#225'vel C'#243'd.'
          DataBinding.FieldName = 'PESSOA_RESPONSAVEL_CODIGO'
          Visible = False
          VisibleForCustomization = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1JUROS_MORA: TcxGridDBColumn
          Caption = 'R$ Juros Mora'
          DataBinding.FieldName = 'JUROS_MORA'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1MULTA: TcxGridDBColumn
          Caption = 'R$ Multa'
          DataBinding.FieldName = 'MULTA'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1ESPECIE: TcxGridDBColumn
          Caption = 'Esp'#233'cie'
          DataBinding.FieldName = 'ESPECIE'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1RETORNOS_ANTERIORES: TcxGridDBColumn
          Caption = 'Retornos Anteriores'
          DataBinding.FieldName = 'RETORNOS_ANTERIORES'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1PERCENTUAL_MULTA: TcxGridDBColumn
          Caption = '% Multa'
          DataBinding.FieldName = 'PERCENTUAL_MULTA'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1DATA_ARQUIVO: TcxGridDBColumn
          Caption = 'Dt. Arquivo'
          DataBinding.FieldName = 'DATA_ARQUIVO'
          Visible = False
          Width = 100
        end
        object CadGridCadastrosDBTableView1REENVIAR_REMESSA: TcxGridDBColumn
          Caption = 'Reenviar Remessa'
          DataBinding.FieldName = 'REENVIAR_REMESSA'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taRightJustify
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          Width = 99
        end
        object CadGridCadastrosDBTableView1MOTIVO: TcxGridDBColumn
          Caption = 'Motivo'
          DataBinding.FieldName = 'MOTIVO'
          Visible = False
          Options.Editing = False
        end
        object GridConsultaDBTableView1Valor_Sem_Registro: TcxGridDBColumn
          Caption = 'Sem Registro'
          DataBinding.FieldName = 'Valor_Sem_Regsistro'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1Valor_Pago: TcxGridDBColumn
          Caption = 'R$ Pago'
          DataBinding.FieldName = 'Valor_Pago'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1Valor_Em_Aberto: TcxGridDBColumn
          DataBinding.FieldName = 'Valor_Em_Aberto'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1Valor_Cancelado: TcxGridDBColumn
          Caption = 'R$ Cancelado'
          DataBinding.FieldName = 'Valor_Cancelado'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1Valor_Vencido: TcxGridDBColumn
          Caption = 'R$ Vencido'
          DataBinding.FieldName = 'Valor_Vencido'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1Valor_Expirado: TcxGridDBColumn
          Caption = 'R$ Expirado'
          DataBinding.FieldName = 'Valor_Expirado'
          Visible = False
          VisibleForCustomization = False
        end
      end
    end
    inherited LbTotalRegistros: TcxLabel
      Top = 555
      ExplicitTop = 555
    end
    inherited GridSubGrid: TcxGrid
      Height = 536
      ExplicitHeight = 536
    end
    inherited pnlFlipRotate: TPanel
      Height = 536
      ExplicitHeight = 536
    end
    inherited tcAcoes: TdxTileControl
      object tiRegistrar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Style.BorderColor = clPurple
        Style.GradientBeginColor = clPurple
        Style.GradientEndColor = clPurple
        Text1.Align = oaMiddleCenter
        Text1.Alignment = taCenter
        Text1.AssignedValues = []
        Text1.Value = 'Registrar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiRegistrarClick
      end
      object tiConsultar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Style.BorderColor = clPurple
        Style.GradientBeginColor = clPurple
        Style.GradientEndColor = clPurple
        Text1.Align = oaMiddleCenter
        Text1.Alignment = taCenter
        Text1.AssignedValues = [avColor]
        Text1.Value = 'Consulta'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiConsultarClick
      end
      object tiImprimir_Boleto: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Style.BorderColor = clPurple
        Style.GradientBeginColor = clPurple
        Style.GradientEndColor = clPurple
        Text1.Align = oaMiddleCenter
        Text1.Alignment = taCenter
        Text1.AssignedValues = []
        Text1.Value = 'Imprimir Boleto'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiImprimir_BoletoClick
      end
      object tiEnviarEmail_Boleto: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 4
        Style.BorderColor = clPurple
        Style.GradientBeginColor = clPurple
        Style.GradientEndColor = clPurple
        Text1.Align = oaMiddleCenter
        Text1.Alignment = taCenter
        Text1.AssignedValues = []
        Text1.Value = 'Enviar Email'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiEnviarEmail_BoletoClick
      end
      object s: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 5
        Text1.Align = oaMiddleCenter
        Text1.Alignment = taCenter
        Text1.AssignedValues = []
        Text1.Value = 'Menu'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = sClick
      end
    end
    object pnlTotal: TPanel [15]
      Left = 0
      Top = 572
      Width = 1248
      Height = 48
      BevelOuter = bvNone
      Color = 16505534
      ParentBackground = False
      TabOrder = 14
      object lc_Totais: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1248
        Height = 48
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = LookBrancoWeb
        object edtCancelados: TcxCurrencyEdit
          Left = 339
          Top = 14
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 1
          Height = 33
          Width = 177
        end
        object edtEm_Aberto: TcxCurrencyEdit
          Left = 695
          Top = 14
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 3
          Height = 33
          Width = 179
        end
        object edtPagos: TcxCurrencyEdit
          Left = 1053
          Top = 14
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 5
          Height = 33
          Width = 195
        end
        object edtSem_Registro: TcxCurrencyEdit
          Left = 517
          Top = 14
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 2
          Height = 33
          Width = 177
        end
        object edtExpirados: TcxCurrencyEdit
          Left = 161
          Top = 14
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 33
          Width = 177
        end
        object edtVencidos: TcxCurrencyEdit
          Left = 875
          Top = 14
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 4
          Height = 33
          Width = 177
        end
        object lc_TotaisGroup_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          Hidden = True
          ItemIndex = 4
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object liedtCancelados: TdxLayoutItem
          Parent = lc_TotaisGroup_Root
          AlignHorz = ahRight
          AlignVert = avBottom
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cancelado'
          CaptionOptions.Layout = clTop
          Control = edtCancelados
          ControlOptions.OriginalHeight = 33
          ControlOptions.OriginalWidth = 177
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object liedtEm_Aberto: TdxLayoutItem
          Parent = lc_TotaisGroup_Root
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Em Aberto'
          CaptionOptions.Layout = clTop
          Control = edtEm_Aberto
          ControlOptions.OriginalHeight = 33
          ControlOptions.OriginalWidth = 179
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object liedtPagos: TdxLayoutItem
          Parent = lc_TotaisGroup_Root
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Pago'
          CaptionOptions.Layout = clTop
          Control = edtPagos
          ControlOptions.OriginalHeight = 33
          ControlOptions.OriginalWidth = 195
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object LiedtSem_Registro: TdxLayoutItem
          Parent = lc_TotaisGroup_Root
          AlignHorz = ahRight
          AlignVert = avBottom
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Sem registro'
          CaptionOptions.Layout = clTop
          Control = edtSem_Registro
          ControlOptions.OriginalHeight = 33
          ControlOptions.OriginalWidth = 177
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object liedtExpirados: TdxLayoutItem
          Parent = lc_TotaisGroup_Root
          AlignHorz = ahRight
          AlignVert = avBottom
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Expirados'
          CaptionOptions.Layout = clTop
          Control = edtExpirados
          ControlOptions.OriginalHeight = 33
          ControlOptions.OriginalWidth = 177
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object liedtVencidos: TdxLayoutItem
          Parent = lc_TotaisGroup_Root
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Vencidos'
          CaptionOptions.Layout = clTop
          Control = edtVencidos
          ControlOptions.OriginalHeight = 33
          ControlOptions.OriginalWidth = 177
          ControlOptions.ShowBorder = False
          Index = 4
        end
      end
    end
    inherited GrupoDados: TdxLayoutGroup
      ItemIndex = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoCentroNavegador
      CaptionOptions.Visible = False
      Control = pnlTotal
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 48
      ControlOptions.OriginalWidth = 979
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  object DBMemo1: TcxDBMemo [6]
    Left = 46
    Top = 149
    DataBinding.DataField = 'DEMONSTRATIVO'
    DataBinding.DataSource = DS
    Properties.ScrollBars = ssVertical
    Style.HotTrack = False
    TabOrder = 5
    Visible = False
    Height = 114
    Width = 552
  end
  inherited pnlFiltroData: TPanel
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  object pnlAcoes: TPanel [8]
    Left = 285
    Top = 69
    Width = 260
    Height = 494
    Color = 16505534
    ParentBackground = False
    TabOrder = 7
    Visible = False
    OnExit = pnlAcoesExit
    object tcAcoesPanel: TdxTileControl
      Tag = -1
      Left = 1
      Top = 1
      Width = 258
      Height = 492
      OptionsBehavior.ItemMoving = False
      OptionsView.CenterContentHorz = True
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupLayout = glVertical
      OptionsView.GroupMaxRowCount = 1000
      OptionsView.IndentHorz = 0
      OptionsView.IndentVert = 0
      OptionsView.ItemHeight = 60
      OptionsView.ItemIndent = 6
      TabOrder = 0
      object dxTileControlGroup13: TdxTileControlGroup
        Index = 0
      end
      object tcFiltrosPanel_Funcionario_Retirar: TdxTileControlItem
        Tag = -1
        GroupIndex = 0
        IndexInGroup = 0
        Size = tcisLarge
        Style.GradientBeginColor = clWhite
        Style.GradientEndColor = clWhite
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Retirar filtros'
        Text1.TextColor = cl3DDkShadow
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaBottomCenter
        Text4.AssignedValues = [avTextColor]
        Text4.Value = 'Retira os filtros da consulta'
        Text4.TextColor = clMedGray
        Visible = False
        OnClick = tiFiltros_ArquivadosClick
      end
      object dxTileControlItem5: TdxTileControlItem
        Tag = -2
        GroupIndex = 0
        IndexInGroup = 1
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Arquivados'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaBottomCenter
        Text4.AssignedValues = []
        Text4.Value = 'Mostra os itens inativados'
        Visible = False
        OnClick = tiFiltros_ArquivadosClick
      end
      object tiGerar_PDF_Boleto: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Size = tcisLarge
        Text1.Align = oaMiddleCenter
        Text1.Alignment = taCenter
        Text1.AssignedValues = []
        Text1.Value = 'Gerar PDF'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiGerar_PDF_BoletoClick
      end
      object tiCancelar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Size = tcisLarge
        Style.BorderColor = clPurple
        Style.GradientBeginColor = clPurple
        Style.GradientEndColor = clPurple
        Text1.Align = oaMiddleCenter
        Text1.Alignment = taCenter
        Text1.AssignedValues = []
        Text1.Value = 'Cancelar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tiBaixarBoleto: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 4
        Size = tcisLarge
        Style.BorderColor = clPurple
        Style.GradientBeginColor = clPurple
        Style.GradientEndColor = clPurple
        Text1.Align = oaMiddleCenter
        Text1.Alignment = taCenter
        Text1.AssignedValues = []
        Text1.Value = 'Baixar Boleto'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44841.539410162040000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelData: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited cxEditStyleController1: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited dxScreenTipRepository1: TdxScreenTipRepository
    PixelsPerInch = 96
  end
  inherited RespositorioEstilos: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmFinanceiro_Base'
    FormClassConsulta = 'TConsuBoleto_Frame'
    UsaCadastroPocket = True
  end
  inherited QueryDragAndDrop: TFDQuery
    SQL.Strings = (
      'select *'
      'from BOLETOS'
      'where (CODIGO = :CODIGO)'
      '      and (CODEMPRESA = :CODEMPRESA)'
      '      and (CODPEDIDO = :CODPEDIDO)')
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end
      item
        Name = 'CODPEDIDO'
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    CampoPK2 = 'CODPEDIDO'
    CampoPK3 = 'CODEMPRESA'
    Tabela = 'BOLETOS'
  end
  inherited cxStatusKeeperConsulta: TcxStatusKeeper
    Left = 350
    Top = 380
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
    Left = 599
    Top = 307
    DesignInfo = 20120151
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    OnCalcFields = ConsultaCalcFields
    FieldOptions.AutoCreateMode = acCombineAlways
    SQL.Strings = (
      
        'select B.*, F.BOLETO_NOSSO_NR,  F.RAZAOSOCIAL, F.VENCTO, F.DATAP' +
        'AGTO, F.PESSOA_RESPONSAVEL_TIPO,'
      
        '       F.EMISSAO, B.PROTESTO, B.BAIXA_DEVOLUCAO, F.PESSOA_RESPON' +
        'SAVEL_CODIGO, F.DOCUMENTO, F.VALOR,'
      
        '       F.JUROS, F.DESCONTO, F.STATUS, F.CODCONTA, F.TIPO as TIPO' +
        '_FINANCEIRO , B.CARTEIRA, B.DEMONSTRATIVO,'
      
        '       B.ACEITE, B.JUROS_MORA, B.MULTA, B.ESPECIE, C.MULTA as PE' +
        'RCENTUAL_MULTA, B.DESCONTO as VALOR_DESCONTO_BOLETO,'
      
        '       C.DESCRICAO as DescricaoConta, C.CODBANCO, 1 as REENVIAR_' +
        'REMESSA, F.CODIGO AS CODFINANCEIRO'
      'from BOLETOS B'
      
        'left join FINANCEIRO F on (F.CODIGO = B.CODIGO) and (F.CODPEDIDO' +
        ' = B.CODPEDIDO) and (F.CODEMPRESA = B.CODEMPRESA)'
      'left join PESSOAS P on (P.CODIGO = F.PESSOA_RESPONSAVEL_CODIGO)'
      'left join CONTAS C on (C.CODIGO = F.CODCONTA)')
    object ConsultaTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object ConsultaDiferenca: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Diferenca'
      Calculated = True
    end
    object ConsultaVENCTO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCTO'
      Origin = 'VENCTO'
      ProviderFlags = []
    end
    object ConsultaDATAPAGTO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Pagto'
      FieldName = 'DATAPAGTO'
      Origin = 'DATAPAGTO'
      ProviderFlags = []
    end
    object ConsultaEMISSAO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
      ProviderFlags = []
    end
    object ConsultaValor_Sem_registro: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor_Sem_registro'
      Calculated = True
    end
    object ConsultaValor_Pago: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor_Pago'
      Calculated = True
    end
    object ConsultaValor_Em_Aberto: TCurrencyField
      DisplayLabel = 'Em Aberto'
      FieldKind = fkCalculated
      FieldName = 'Valor_Em_Aberto'
      Calculated = True
    end
    object ConsultaValor_Cancelado: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Valor_Cancelado'
      Calculated = True
    end
    object ConsultaValor_Vencido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor_Vencido'
      Calculated = True
    end
    object ConsultaValor_Expirado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor_Expirado'
      Calculated = True
    end
  end
  object WRFormataCamposDataSets1: TWRFormataCamposDataSets
    OnCarregaDataSets = WRFormataCamposDataSets1CarregaDataSets
    Left = 627
    Top = 307
  end
  object Financeiro: TFDQuery
    MasterSource = DS
    MasterFields = 'CODFINANCEIRO'
    Connection = DMBanco.Banco
    Transaction = TransaDragAndDrop
    SQL.Strings = (
      'SELECT * FROM FINANCEIRO'
      'where Codigo= :CODFINANCEIRO')
    Left = 266
    Top = 380
    ParamData = <
      item
        Name = 'CODFINANCEIRO'
        ParamType = ptInput
      end>
  end
  object UC_Financeiro: TUCHist_DataSet
    DataSet = Financeiro
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODIGO'
    CampoPK2 = 'CODPEDIDO'
    CampoPK3 = 'CODEMPRESA'
    DS = DS_Financeiro
    Tabela = 'Financeiro'
    Modulo = 'FINANCEIRO'
    Left = 322
    Top = 380
  end
  object DS_Financeiro: TDataSource
    Left = 294
    Top = 380
  end
  object imgBolinhas_Boleto: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 20120123
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000C744558745469746C65004272616E643B095EABC4000000D4494441
          54785EA5D3A10EC2301006E00B30C1E30CE426D18377409340027A02851F9879
          EA86DCABF0002CE10526A68E3FE417CD659DA9F872E935F9D7745751D528FFC5
          7BBFF1E5E0E00303AB635F6834600177D010EE27A1801A945EB083356CA101A5
          7A2C2003A50303E7F06015F695321BF0F4BE2C3083137B47AE85FB0ACE067CB9
          51C00D7A504FCF7EC1756703945258426B025AF653AE87A913085C4CC01964EA
          04CEDC41095748594BF69BD01DE4F62F18F62FE463735099392860C5EACF4115
          1AA4247612ED5BE860609D7C0B31E2037E7B175D2D47060D1D0000000049454E
          44AE426082}
      end>
  end
end
