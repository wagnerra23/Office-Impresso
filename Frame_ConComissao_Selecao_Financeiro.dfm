inherited Frame_ConsuComissao_Selecao_Financeiro: TFrame_ConsuComissao_Selecao_Financeiro
  inherited pnlIniciar: TPanel [0]
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited pnlFiltros: TPanel [1]
    inherited tcFiltrosPanel: TdxTileControl
      Width = 73
      ExplicitWidth = 73
    end
    inherited tcSalvarFiltro: TdxTileControl
      TabOrder = 2
    end
    object pnlFiltroExtra2: TPanel
      Left = 74
      Top = 1
      Width = 185
      Height = 481
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object cxCheckListBox10: TcxCheckListBox
        Left = -1
        Top = -1
        Width = 186
        Height = 42
        Columns = 1
        Items = <
          item
            Text = 'Comiss'#227'o Pendente'
          end>
        ParentFont = False
        Style.Color = 16760767
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.TextColor = clGrayText
        Style.IsFontAssigned = True
        TabOrder = 0
        OnClickCheck = cxCheckListBox10ClickCheck
      end
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl [2]
    inherited GridConsulta: TcxGrid
      Height = 442
      ExplicitHeight = 442
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        OnCustomDrawCell = GridConsultaDBTableView1CustomDrawCell
        inherited GridConsultaDBTableView1Total: TcxGridDBColumn [4]
          Width = 94
        end
        inherited GridConsultaDBTableView1NOTAFISCAL: TcxGridDBColumn [5]
        end
        inherited GridConsultaDBTableView1TIPO: TcxGridDBColumn [6]
        end
        inherited GridConsultaDBTableView1PESSOA_RESPONSAVEL_TIPO: TcxGridDBColumn [7]
          Visible = False
        end
        inherited GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn [8]
        end
        inherited GridConsultaDBTableView1VENCTO: TcxGridDBColumn [9]
        end
        inherited GridConsultaDBTableView1DATAPAGTO: TcxGridDBColumn [10]
        end
        inherited GridConsultaDBTableView1CHEQUE_NUMERO: TcxGridDBColumn [11]
        end
        inherited GridConsultaDBTableView1TIPOPAGTO: TcxGridDBColumn [12]
        end
        object GridConsultaDBTableView1QTD_COMISSAO_PAGA: TcxGridDBColumn
          Caption = 'Qtd. Comiss'#227'o Paga'
          DataBinding.FieldName = 'QTD_COMISSAO_PAGA'
        end
      end
    end
    inherited pnlFlipRotate: TPanel
      TabOrder = 18
    end
    inherited edtCredito: TcxCurrencyEdit
      Left = 906
      TabOrder = 16
      ExplicitLeft = 906
    end
    inherited edtDebito: TcxCurrencyEdit
      Left = 1053
      TabOrder = 17
      ExplicitLeft = 1053
    end
    inherited EdtTotal: TcxCurrencyEdit
      Left = 736
      TabOrder = 15
      ExplicitLeft = 736
    end
    object cxGrid1: TcxGrid [19]
      Left = 229
      Top = 493
      Width = 979
      Height = 79
      TabOrder = 13
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        DataController.DataSource = DSComissao_Financeiro
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1IS_PAGAR: TcxGridDBColumn
          Caption = 'Pago'
          DataBinding.FieldName = 'IS_PAGAR'
          PropertiesClassName = 'TcxTextEditProperties'
          Visible = False
          Width = 46
        end
        object cxGrid1DBTableView1CODCOMISSAO: TcxGridDBColumn
          Caption = 'C'#243'd. Comiss'#227'o'
          DataBinding.FieldName = 'CODCOMISSAO'
          Width = 83
        end
        object cxGrid1DBTableView1FRASE: TcxGridDBColumn
          Caption = 'Obs'
          DataBinding.FieldName = 'FRASE'
          Width = 271
        end
        object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object cxGrid1DBTableView1PERC_COMISSAO: TcxGridDBColumn
          Caption = '%'
          DataBinding.FieldName = 'PERC_COMISSAO'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 28
        end
        object cxGrid1DBTableView1VALOR_COMISSAO: TcxGridDBColumn
          Caption = 'R$ Comiss'#227'o'
          DataBinding.FieldName = 'VALOR_COMISSAO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 88
        end
        object cxGrid1DBTableView1Pendente: TcxGridDBColumn
          Caption = 'R$ Pendente'
          DataBinding.FieldName = 'VALOR_COMISSAO_PENDENTE'
          Width = 86
        end
        object cxGrid1DBTableView1GERA_COMISSAO: TcxGridDBColumn
          Caption = 'Gera Comiss'#227'o'
          DataBinding.FieldName = 'GERA_COMISSAO'
          Visible = False
        end
        object cxGrid1DBTableView1COMISSAO_STATUS: TcxGridDBColumn
          Caption = 'Status Comiss'#227'o'
          DataBinding.FieldName = 'COMISSAO_STATUS'
          Visible = False
        end
        object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Refer'#234'ncia'
          DataBinding.FieldName = 'DESCRICAO'
          Visible = False
        end
        object cxGrid1DBTableView1RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Representante'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Visible = False
          Width = 98
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    inherited LiGridConsulta: TdxLayoutItem
      Parent = dxLayoutGroup1
    end
    inherited GrupoNavegador: TdxLayoutGroup
      AlignHorz = ahLeft
    end
    inherited GrupoFooter: TdxLayoutGroup
      AlignVert = avBottom
    end
    inherited GrupoTotal: TdxLayoutGroup
      AlignVert = avBottom
    end
    inherited LiSaldo: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avTop
      Index = 0
    end
    inherited LiCredito: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      Index = 1
    end
    inherited LiDebito: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avTop
      Index = 2
    end
    inherited dxLayoutItem1: TdxLayoutItem
      AlignVert = avClient
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Comiss'#245'es da Parcela Selecionada'
      CaptionOptions.Layout = clTop
      Control = cxGrid1
      ControlOptions.OriginalHeight = 79
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoMeio
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
  end
  inherited pnlImportar: TPanel [3]
  end
  inherited pnlAgrupador: TPanel [4]
  end
  inherited pnlImpressoes: TPanel [5]
  end
  inherited pnlFiltroData: TPanel
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44893.629743275480000000
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
  inherited QueryDragAndDrop: TFDQuery
    BeforePost = QueryDragAndDropBeforePost
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Top = 445
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      
        'select F.CODIGO, F.CODPEDIDO, F.CODEMPRESA, F.RAZAOSOCIAL, F.DOC' +
        'UMENTO,'
      
        '       F.NOTAFISCAL, F.HISTORICO, F.EMISSAO, F.VENCTO, F.DATAPAG' +
        'TO, F.VALOR,'
      
        '       F.JUROS, F.DESCONTO, F.CODPLANOCONTAS, F.CODTIPOPAGTO, F.' +
        'TIPOPAGTO,'
      
        '       F.CODCONDICAOPAGTO, F.CONDICAOPAGTO, F.CONTATOS, F.PARCEL' +
        'A, F.CODUSUARIO,'
      
        '       F.TIPO, F.STATUS, F.CHEQUE_NUMERO, F.BOLETO_NOSSO_NR, F.C' +
        'ODNF_ENTRADA,'
      
        '       F.DT_NOTAFISCAL, F.CODFINANCEIRO_GRUPO, F.DT_EXCLUSAO, F.' +
        'MOTIVO_EXCLUSAO,'
      
        '       F.COR, F.COMISSAO_PAGA, F.DT_ALTERACAO, F.CODCONTA, F.AGR' +
        'UPADOR,'
      '       F.PESSOA_RESPONSAVEL_CODIGO, F.PESSOA_RESPONSAVEL_TIPO,'
      
        '       F.PESSOA_RESPONSAVEL_SEQUENCIA, F.CREDITO, F.DT_EMISSAO_V' +
        'ENDA,'
      
        '       F.PREVISAO, F.DT_PREVISAO, F.LANCAMENTO_FUTURO, F.CHEQUE_' +
        'COMPE,'
      
        '       F.DT_COMPETENCIA, F.EM_EXTRATO, F.CONCILIADO, F.DT_CONCIL' +
        'IADO,'
      '       F.CODUSUARIO_CONTA, PC.DESCRICAO as PLANOCONTAS,'
      
        '       C.DESCRICAO as CONTA, U.USUARIO, UC.USUARIO as USUARIO_CO' +
        'NTA,'
      '       (select COUNT(1) from COMISSAO_FINANCEIRO CF '
      '       LEFT JOIN COMISSAO CO ON CO.CODIGO = CF.CODCOMISSAO'
      
        '       WHERE CF.codfinanceiro = F.codigo and CF.codfinanceiro > ' +
        '1 and CO.DT_FINANCEIRO IS NOT NULL) as QTD_COMISSAO_PAGA'
      'from FINANCEIRO F'
      'left join PLANOCONTAS PC on (F.CODPLANOCONTAS = PC.CODIGO)'
      'left join CONTAS C on (F.CODCONTA = C.CODIGO)'
      'left join USUARIO U on (F.CODUSUARIO = U.CODIGO)'
      'left join USUARIO UC on (F.CODUSUARIO_CONTA = UC.CODIGO) ')
  end
  object Comissao_Financeiro: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    SQL.Strings = (
      
        'SELECT CF.*, C.DESCRICAO, P.RAZAOSOCIAL, iif(COALESCE(CF.IS_PAGA' +
        'R, '#39'N'#39') = '#39'S'#39' and C.DT_FINANCEIRO IS NOT NULL, '#39'PAGO NA COMISS'#195'O' +
        ' C'#211'D.'#39' || CF.CODCOMISSAO, '#39'EM ABERTO NA COMISS'#195'O C'#211'D.'#39' || CF.COD' +
        'COMISSAO) as FRASE'
      'FROM COMISSAO_FINANCEIRO CF'
      'LEFT JOIN COMISSAO C ON C.CODIGO = CF.CODCOMISSAO'
      'LEFT JOIN PESSOAS P ON P.codigo = C.pessoa_responsavel_codigo'
      'WHERE CF.CODFINANCEIRO = :CODIGO')
    Left = 267
    Top = 361
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSComissao_Financeiro: TDataSource
    DataSet = Comissao_Financeiro
    Left = 295
    Top = 361
  end
end
