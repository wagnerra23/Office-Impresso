inherited Frame_ConsuComissao: TFrame_ConsuComissao
  inherited pnlIniciar: TPanel [1]
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited pnlFiltros: TPanel [2]
    Top = 133
    ExplicitTop = 133
  end
  inherited pnlAgrupador: TPanel [3]
    Top = 135
    ExplicitTop = 135
  end
  inherited pnlFiltroData: TPanel [4]
    Top = 135
    ExplicitTop = 135
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
            Column = GridConsultaDBTableView1VALOR_COMISSAO
          end
          item
            Kind = skSum
            Column = GridConsultaDBTableView1SOMA_FINANCEIRO_EMABERTO
          end
          item
            Kind = skSum
            Column = GridConsultaDBTableView1SOMA_FINANCEIRO_VENCIDA
          end
          item
            Kind = skSum
            Column = GridConsultaDBTableView1SOMA_FINANCEIRO_QUITADA
          end>
        DataController.Summary.OnAfterSummary = GridConsultaDBTableView1DataControllerSummaryAfterSummary
        object GridConsultaDBTableView1DATA: TcxGridDBColumn
          Caption = 'Data '
          DataBinding.FieldName = 'DATA'
          Visible = False
          Width = 97
        end
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          SortIndex = 0
          SortOrder = soDescending
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Refer'#234'ncia'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 125
        end
        object GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Width = 229
        end
        object GridConsultaDBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo de Comiss'#227'o'
          DataBinding.FieldName = 'TIPO'
          Width = 113
        end
        object GridConsultaDBTableView1VALOR_COMISSAO: TcxGridDBColumn
          Caption = 'R$ Comiss'#227'o'
          DataBinding.FieldName = 'VALOR_COMISSAO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
          Width = 81
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Visible = False
          Width = 43
        end
        object GridConsultaDBTableView1DT_FINANCEIRO: TcxGridDBColumn
          Caption = 'Enviado Financeiro'
          DataBinding.FieldName = 'DT_FINANCEIRO'
          Width = 150
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Dt Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 115
        end
        object GridConsultaDBTableView1SOMA_FINANCEIRO_VENCIDA: TcxGridDBColumn
          Caption = 'R$ Vencida'
          DataBinding.FieldName = 'SOMA_FINANCEIRO_VENCIDA'
          Visible = False
        end
        object GridConsultaDBTableView1SOMA_FINANCEIRO_EMABERTO: TcxGridDBColumn
          Caption = 'R$ Em Aberto'
          DataBinding.FieldName = 'SOMA_FINANCEIRO_EMABERTO'
          Visible = False
        end
        object GridConsultaDBTableView1SOMA_FINANCEIRO_QUITADA: TcxGridDBColumn
          Caption = 'R$ Pago'
          DataBinding.FieldName = 'SOMA_FINANCEIRO_QUITADA'
          Visible = False
        end
        object GridConsultaDBTableView1TIPO_DATA: TcxGridDBColumn
          Caption = 'Tipo de Comiss'#227'o'
          DataBinding.FieldName = 'TIPO_DATA'
          Visible = False
          Width = 131
        end
        object GridConsultaDBTableView1TIPO_FINANCEIRO: TcxGridDBColumn
          Caption = 'Financeiro'
          DataBinding.FieldName = 'TIPO_FINANCEIRO'
          Visible = False
          Width = 119
        end
        object GridConsultaDBTableView1CARGO: TcxGridDBColumn
          DataBinding.FieldName = 'CARGO'
          Visible = False
        end
        object GridConsultaDBTableView1DT_COMISSAO_GERADA: TcxGridDBColumn
          Caption = 'Dt Gera'#231#227'o'
          DataBinding.FieldName = 'DT_COMISSAO_GERADA'
          Visible = False
          Width = 153
        end
        object GridConsultaDBTableView1CODCOMISSAO: TcxGridDBColumn
          DataBinding.FieldName = 'CODCOMISSAO'
          Visible = False
        end
        object GridConsultaDBTableView1PESSOA_RESPONSAVEL_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_RESPONSAVEL_CODIGO'
          Visible = False
        end
        object GridConsultaDBTableView1PESSOA_RESPONSAVEL_TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_RESPONSAVEL_TIPO'
          Visible = False
        end
        object GridConsultaDBTableView1PESSOA_RESPONSAVEL_SEQUENCIA: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_RESPONSAVEL_SEQUENCIA'
          Visible = False
        end
        object GridConsultaDBTableView1GERA_COMISSAO: TcxGridDBColumn
          DataBinding.FieldName = 'GERA_COMISSAO'
          Visible = False
        end
        object GridConsultaDBTableView1ACAO: TcxGridDBColumn
          DataBinding.FieldName = 'ACAO'
          Visible = False
        end
      end
    end
    inherited pnlFlipRotate: TPanel
      TabOrder = 14
    end
    object edtCredito: TcxCurrencyEdit [15]
      Left = 1087
      Top = 587
      Margins.Left = 1
      Margins.Top = 1
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 12
      Height = 33
      Width = 121
    end
    inherited LiLbTotalRegistros: TdxLayoutItem
      AlignVert = avBottom
    end
    inherited GrupoNavegador: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avBottom
      Index = 1
    end
    inherited GrupoBotoesGoogle: TdxLayoutGroup
      AlignVert = avBottom
    end
    inherited GrupoPesquizarEGrid: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited GrupoFooter: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avBottom
      ItemIndex = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoFooter
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Total'
      CaptionOptions.Layout = clTop
      Control = edtCredito
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 40715.474914641210000000
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
    FormClassCadastro = 'TFrmComissao'
    FormClassConsulta = 'TConsuComissao'
    UsaCadastroPocket = True
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'select C.* , P.RAZAOSOCIAL, P.CARGO'
      'from COMISSAO C'
      'left join PESSOAS P on (C.PESSOA_RESPONSAVEL_CODIGO = P.CODIGO)')
    object ConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object ConsultaDT_FINANCEIRO: TSQLTimeStampField
      FieldName = 'DT_FINANCEIRO'
      Origin = 'DT_FINANCEIRO'
    end
    object ConsultaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 30
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object ConsultaPESSOA_RESPONSAVEL_CODIGO: TStringField
      FieldName = 'PESSOA_RESPONSAVEL_CODIGO'
      Origin = 'PESSOA_RESPONSAVEL_CODIGO'
      Size = 10
    end
    object ConsultaPESSOA_RESPONSAVEL_TIPO: TStringField
      FieldName = 'PESSOA_RESPONSAVEL_TIPO'
      Origin = 'PESSOA_RESPONSAVEL_TIPO'
      Size = 3
    end
    object ConsultaPESSOA_RESPONSAVEL_SEQUENCIA: TIntegerField
      FieldName = 'PESSOA_RESPONSAVEL_SEQUENCIA'
      Origin = 'PESSOA_RESPONSAVEL_SEQUENCIA'
    end
    object ConsultaVALOR_COMISSAO: TFloatField
      FieldName = 'VALOR_COMISSAO'
      Origin = 'VALOR_COMISSAO'
    end
    object ConsultaRAZAOSOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 150
    end
    object ConsultaCARGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CARGO'
      Origin = 'CARGO'
      ProviderFlags = []
      Size = 50
    end
    object ConsultaSOMA_FINANCEIRO_VENCIDA: TFloatField
      FieldName = 'SOMA_FINANCEIRO_VENCIDA'
      Origin = 'SOMA_FINANCEIRO_VENCIDA'
    end
    object ConsultaSOMA_FINANCEIRO_EMABERTO: TFloatField
      FieldName = 'SOMA_FINANCEIRO_EMABERTO'
      Origin = 'SOMA_FINANCEIRO_EMABERTO'
    end
    object ConsultaSOMA_FINANCEIRO_QUITADA: TFloatField
      FieldName = 'SOMA_FINANCEIRO_QUITADA'
      Origin = 'SOMA_FINANCEIRO_QUITADA'
    end
    object ConsultaATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
  end
  object CreateDaTela: TWRFormataCamposDataSets
    OnCarregaDataSets = CreateDaTelaCarregaDataSets
    Left = 268
    Top = 365
  end
end
