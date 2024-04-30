inherited Frame_ConsuComissao_Selecao_venda: TFrame_ConsuComissao_Selecao_venda
  inherited pnlAgrupador: TPanel [1]
  end
  inherited pnlFiltros: TPanel [2]
  end
  inherited pnlIniciar: TPanel [3]
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl [4]
    LayoutLookAndFeel = LookBrancoWeb
    inherited GridConsulta: TcxGrid
      Left = 229
      Height = 345
      ExplicitLeft = 229
      ExplicitHeight = 345
    end
    inherited pnlFlipRotate: TPanel
      Color = clWindow
      TabOrder = 21
    end
    inherited cbxQuantidadeItens: TcxComboBox
      Style.BorderStyle = ebsNone
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
    end
    inherited GridVendaProduto1: TcxGrid
      Left = 229
      Width = 1012
      TabOrder = 13
      ExplicitLeft = 229
      ExplicitWidth = 1012
    end
    inherited MemoObservacao: TDBMemo
      Left = 1244
      Top = 479
      Height = 175
      TabOrder = 14
      ExplicitLeft = 1244
      ExplicitTop = 479
      ExplicitHeight = 175
    end
    inherited LblTotal: TcxLabel
      Left = 1026
      ExplicitLeft = 1026
      AnchorY = 672
    end
    inherited EdtTotalSelecionado: TcxCurrencyEdit
      Left = 846
      TabOrder = 17
      ExplicitLeft = 846
    end
    inherited btnTodos: TcxButton
      TabOrder = 22
    end
    inherited AtvCarregandoTotal: TdxActivityIndicator
      Left = 1152
      ExplicitLeft = 1152
    end
    inherited EdtTotal: TcxCurrencyEdit
      Left = 1090
      TabOrder = 19
      ExplicitLeft = 1090
    end
    inherited TreeListUsuarios: TcxDBTreeList
      TabOrder = 23
    end
    inherited liTotalSelecionado: TcxLabel
      Left = 681
      ExplicitLeft = 681
      AnchorY = 672
    end
    inherited cxButton3: TcxButton
      TabOrder = 27
    end
    object cxGrid2: TcxGrid [26]
      Left = 229
      Top = 397
      Width = 1107
      Height = 79
      TabOrder = 12
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = cxGridDBTableView1CustomDrawCell
        DataController.DataSource = DSComissao_Financeiro
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGridDBViewIS_PAGAR: TcxGridDBColumn
          Caption = 'Pago'
          DataBinding.FieldName = 'IS_PAGAR'
          PropertiesClassName = 'TcxTextEditProperties'
          Visible = False
          Width = 46
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = 'C'#243'd. Comiss'#227'o'
          DataBinding.FieldName = 'CODCOMISSAO'
          Width = 83
        end
        object cxGrid1DBTableView1FRASE: TcxGridDBColumn
          Caption = 'Obs'
          DataBinding.FieldName = 'FRASE'
          Width = 231
        end
        object cxGridDBColumn3: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object cxGridDBTableView1DOCUMENTO: TcxGridDBColumn
          Caption = 'Doc.'
          DataBinding.FieldName = 'DOCUMENTO'
          Width = 96
        end
        object cxGridDBTableView1PARCELA: TcxGridDBColumn
          Caption = 'Parcela'
          DataBinding.FieldName = 'PARCELA'
        end
        object cxGridDBTableView1VALOR: TcxGridDBColumn
          Caption = 'Valor Parcela'
          DataBinding.FieldName = 'VALOR_PARCELA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 94
        end
        object cxGridDBColumn4: TcxGridDBColumn
          Caption = '%'
          DataBinding.FieldName = 'PERC_COMISSAO'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 28
        end
        object cxGridDBColumn5: TcxGridDBColumn
          Caption = 'R$ Comiss'#227'o'
          DataBinding.FieldName = 'VALOR_COMISSAO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 88
        end
        object cxGridDBColumn6: TcxGridDBColumn
          Caption = 'R$ Pendente'
          DataBinding.FieldName = 'VALOR_COMISSAO_PENDENTE'
          Width = 91
        end
        object cxGridDBColumn7: TcxGridDBColumn
          Caption = 'Gera Comiss'#227'o'
          DataBinding.FieldName = 'GERA_COMISSAO'
          Visible = False
        end
        object cxGridDBColumn8: TcxGridDBColumn
          Caption = 'Status Comiss'#227'o'
          DataBinding.FieldName = 'COMISSAO_STATUS'
          Visible = False
        end
        object cxGridDBColumn9: TcxGridDBColumn
          Caption = 'Refer'#234'ncia'
          DataBinding.FieldName = 'DESCRICAO'
          Visible = False
        end
        object cxGridDBColumn10: TcxGridDBColumn
          Caption = 'Representante'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Visible = False
          Width = 98
        end
        object cxGridDBTableView1DT_FINANCEIRO: TcxGridDBColumn
          DataBinding.FieldName = 'DT_FINANCEIRO'
          Visible = False
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    inherited LiGridConsulta: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
    end
    inherited GrupoRodape: TdxLayoutGroup
      Visible = False
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = GrupoFlip
      AlignHorz = ahClient
      AlignVert = avClient
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Comiss'#245'es da Parcela Selecionada'
      CaptionOptions.Layout = clTop
      Control = cxGrid2
      ControlOptions.OriginalHeight = 79
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited pnlImpressoes: TPanel [6]
  end
  inherited pnlFiltroData: TPanel [7]
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
      ReportDocument.CreationDate = 44893.635268472220000000
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
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited RepAgenda: TcxEditRepository
    PixelsPerInch = 96
  end
  inherited ImgListActions: TcxImageList
    FormatVersion = 1
  end
  inherited dxRibbonPopupAgrupar: TdxRibbonPopupMenu
    PixelsPerInch = 96
  end
  inherited cxImageListTreeList: TcxImageList
    FormatVersion = 1
  end
  object Financeiro: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = Transa
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT F.* FROM FINANCEIRO F'
      'WHERE F.CODPEDIDO = :CODIGO')
    Left = 219
    Top = 253
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 11
      end>
  end
  object Comissao_Financeiro: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    SQL.Strings = (
      
        'SELECT CF.*, C.DESCRICAO, C.DT_FINANCEIRO, P.RAZAOSOCIAL, F.VALO' +
        'R as VALOR_PARCELA, F.PARCELA, F.DOCUMENTO, iif(COALESCE(CF.IS_P' +
        'AGAR, '#39'N'#39') = '#39'S'#39' and C.DT_FINANCEIRO IS NOT NULL, '#39'PAGO NA COMIS' +
        'S'#195'O C'#211'D.'#39' || CF.CODCOMISSAO, '#39'EM ABERTO NA COMISS'#195'O C'#211'D.'#39' || CF.' +
        'CODCOMISSAO) as FRASE'
      'FROM COMISSAO_FINANCEIRO CF'
      'LEFT JOIN COMISSAO C ON C.CODIGO = CF.CODCOMISSAO'
      'LEFT JOIN FINANCEIRO F ON F.CODIGO = CF.CODFINANCEIRO'
      'LEFT JOIN PESSOAS P ON P.codigo = C.pessoa_responsavel_codigo'
      'WHERE CF.CODPEDIDO = :CODIGO')
    Left = 251
    Top = 337
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSComissao_Financeiro: TDataSource
    DataSet = Comissao_Financeiro
    Left = 279
    Top = 337
  end
end
