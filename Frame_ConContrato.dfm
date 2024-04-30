inherited FrameConContrato: TFrameConContrato
  inherited pnlFiltros: TPanel [1]
  end
  inherited pnlIniciar: TPanel [2]
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited pnlAgrupador: TPanel [3]
  end
  inherited pnlFiltroData: TPanel [4]
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl [5]
    inherited GridConsulta: TcxGrid
      Height = 536
      ExplicitHeight = 536
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = GridConsultaDBTableView1Supensos
          end
          item
            Kind = skSum
            Column = GridConsultaDBTableView1Ativados
          end
          item
            Kind = skSum
            Column = GridConsultaDBTableView1Cancelados
          end>
        DataController.Summary.OnAfterSummary = GridConsultaDBTableView1DataControllerSummaryAfterSummary
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'Codigo'
          DataBinding.FieldName = 'CODIGO'
          Width = 48
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 392
        end
        object GridConsultaDBTableView1PESSOA_CLIENTE_CODIGO: TcxGridDBColumn
          Caption = 'Cod. Cliente'
          DataBinding.FieldName = 'PESSOA_CLIENTE_CODIGO'
          Visible = False
          Width = 81
        end
        object GridConsultaDBTableView1PESSOA_CLIENTE_TIPO: TcxGridDBColumn
          Caption = 'Tipo de Cliente'
          DataBinding.FieldName = 'PESSOA_CLIENTE_TIPO'
          Visible = False
          VisibleForEditForm = bTrue
          Width = 80
        end
        object GridConsultaDBTableView1PESSOA_CLIENTE_SEQUENCIA: TcxGridDBColumn
          Caption = 'Sequ'#234'ncia do Cadastro'
          DataBinding.FieldName = 'PESSOA_CLIENTE_SEQUENCIA'
          Visible = False
          Width = 79
        end
        object GridConsultaDBTableView1DT_INICIO: TcxGridDBColumn
          Caption = 'Iniciado'
          DataBinding.FieldName = 'DT_INICIO'
          Width = 114
        end
        object GridConsultaDBTableView1DT_FIM: TcxGridDBColumn
          Caption = 'Finalizado'
          DataBinding.FieldName = 'DT_FIM'
          Width = 121
        end
        object GridConsultaDBTableView1VALOR: TcxGridDBColumn
          Caption = 'Valor da fatura'
          DataBinding.FieldName = 'VALOR'
          Width = 123
        end
        object GridConsultaDBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          Width = 161
        end
        object GridConsultaDBTableView1DT_PROXIMA_FATURA: TcxGridDBColumn
          Caption = 'Data da pr'#243'xima fatura'
          DataBinding.FieldName = 'DT_PROXIMA_FATURA'
          Width = 139
        end
        object GridConsultaDBTableView1DT_ULTIMA_FATURA_GERADA: TcxGridDBColumn
          Caption = 'Data da '#218'ltima fatura gerada'
          DataBinding.FieldName = 'DT_ULTIMA_FATURA_GERADA'
        end
        object GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn
          Caption = 'Observa'#231#227'o'
          DataBinding.FieldName = 'OBSERVACAO'
          Width = 251
        end
        object GridConsultaDBTableView1CODPLANOCONTAS: TcxGridDBColumn
          Caption = 'Cod. Plano de contas'
          DataBinding.FieldName = 'CODPLANOCONTAS'
          Width = 120
        end
        object GridConsultaDBTableView1CODCONTA: TcxGridDBColumn
          Caption = 'Cod. Conta'
          DataBinding.FieldName = 'CODCONTA'
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 39
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Dt. '#218'ltima Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
        end
        object GridConsultaDBTableView1STATUS: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'STATUS'
        end
        object GridConsultaDBTableView1Cancelados: TcxGridDBColumn
          DataBinding.FieldName = 'Cancelados'
          Visible = False
        end
        object GridConsultaDBTableView1Ativados: TcxGridDBColumn
          DataBinding.FieldName = 'Ativados'
          Visible = False
        end
        object GridConsultaDBTableView1Supensos: TcxGridDBColumn
          DataBinding.FieldName = 'Supensos'
          Visible = False
        end
      end
    end
    inherited pnlFlipRotate: TPanel
      TabOrder = 14
    end
    inherited tcAcoes: TdxTileControl
      object dxTileControl1Item1: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Gerar Faturas M'#234's'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object dxTileControl1Item2: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Gerar Faturas Selecionadas'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object dxTileControl1Item3: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Gerar Nota Fiscal'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object dxTileControl1Item4: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 4
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Reajustes'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
    end
    object pnlTotal: TPanel [15]
      Left = 310
      Top = 573
      Width = 898
      Height = 47
      BevelOuter = bvNone
      Color = 16505534
      ParentBackground = False
      TabOrder = 13
      object lc_Totais: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 898
        Height = 47
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = LookBrancoWeb
        ExplicitWidth = 583
        object edtCancelados: TcxCurrencyEdit
          Left = 30
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
        object edtSuspensos: TcxCurrencyEdit
          Left = 208
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
          Width = 179
        end
        object EdtTotal: TcxCurrencyEdit
          Left = 388
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
          Width = 195
        end
        object lc_TotaisGroup_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          Hidden = True
          ItemIndex = 1
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object LiCredito: TdxLayoutItem
          Parent = lc_TotaisGroup_Root
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cancelados'
          CaptionOptions.Layout = clTop
          Control = edtCancelados
          ControlOptions.OriginalHeight = 33
          ControlOptions.OriginalWidth = 177
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object LiDebito: TdxLayoutItem
          Parent = lc_TotaisGroup_Root
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Suspensos'
          CaptionOptions.Layout = clTop
          Control = edtSuspensos
          ControlOptions.OriginalHeight = 33
          ControlOptions.OriginalWidth = 179
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object LiSaldo: TdxLayoutItem
          Parent = lc_TotaisGroup_Root
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Total'
          CaptionOptions.Layout = clTop
          Control = EdtTotal
          ControlOptions.OriginalHeight = 33
          ControlOptions.OriginalWidth = 195
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
    inherited GrupoNavegador: TdxLayoutGroup
      AlignVert = avBottom
    end
    inherited GrupoPesquizarEGrid: TdxLayoutGroup
      ItemIndex = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoFooter
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = pnlTotal
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 47
      ControlOptions.OriginalWidth = 979
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44958.373271122680000000
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
    Left = 492
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    OnCalcFields = ConsultaCalcFields
    SQL.Strings = (
      'SELECT * FROM CONTRATO')
    object ConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object ConsultaPESSOA_CLIENTE_CODIGO: TStringField
      FieldName = 'PESSOA_CLIENTE_CODIGO'
      Origin = 'PESSOA_CLIENTE_CODIGO'
      Size = 10
    end
    object ConsultaPESSOA_CLIENTE_TIPO: TStringField
      FieldName = 'PESSOA_CLIENTE_TIPO'
      Origin = 'PESSOA_CLIENTE_TIPO'
      Size = 10
    end
    object ConsultaPESSOA_CLIENTE_SEQUENCIA: TIntegerField
      FieldName = 'PESSOA_CLIENTE_SEQUENCIA'
      Origin = 'PESSOA_CLIENTE_SEQUENCIA'
    end
    object ConsultaDT_INICIO: TSQLTimeStampField
      FieldName = 'DT_INICIO'
      Origin = 'DT_INICIO'
    end
    object ConsultaDT_FIM: TSQLTimeStampField
      FieldName = 'DT_FIM'
      Origin = 'DT_FIM'
    end
    object ConsultaDT_PROXIMA_FATURA: TSQLTimeStampField
      FieldName = 'DT_PROXIMA_FATURA'
      Origin = 'DT_PROXIMA_FATURA'
    end
    object ConsultaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '#,###,##0.00'
    end
    object ConsultaCODPLANOCONTAS: TStringField
      FieldName = 'CODPLANOCONTAS'
      Origin = 'CODPLANOCONTAS'
      Size = 15
    end
    object ConsultaCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
      Origin = 'CODCONTA'
    end
    object ConsultaCODCONTRATO_TIPO: TIntegerField
      FieldName = 'CODCONTRATO_TIPO'
      Origin = 'CODCONTRATO_TIPO'
    end
    object ConsultaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object ConsultaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object ConsultaCancelados: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Cancelados'
      Calculated = True
    end
    object ConsultaSupensos: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Supensos'
      Calculated = True
    end
    object ConsultaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 50
    end
    object ConsultaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 50
    end
    object ConsultaAtivados: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Ativados'
      Calculated = True
    end
    object ConsultaDT_ULTIMA_FATURA_GERADA: TSQLTimeStampField
      FieldName = 'DT_ULTIMA_FATURA_GERADA'
      Origin = 'DT_ULTIMA_FATURA_GERADA'
    end
  end
end
