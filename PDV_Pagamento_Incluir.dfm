object FrmPDV_Pagamento_Incluir: TFrmPDV_Pagamento_Incluir
  Left = 0
  Top = 0
  ActiveControl = edtValor_Pagto
  BorderStyle = bsSizeToolWin
  Caption = 'Incluir pagamento'
  ClientHeight = 366
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlincluirPagamento: TPanel
    Left = 0
    Top = 0
    Width = 537
    Height = 366
    Align = alClient
    Caption = 'Selecione a forma de pagamento'
    TabOrder = 0
    object dxLayoutControl6: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 535
      Height = 364
      Align = alClient
      TabOrder = 0
      object GridFormaPagamento: TcxGrid
        Left = 10
        Top = 38
        Width = 271
        Height = 282
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 1
        object GridFormaPagamentoDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnFocusedRecordChanged = GridFormaPagamentoDBTableView1FocusedRecordChanged
          DataController.DataSource = DSTipoPagamento
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          object GridFormaPagamentoDBTableView1CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'CODIGO'
            Visible = False
          end
          object GridFormaPagamentoDBTableView1DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRICAO'
            Options.Editing = False
          end
          object GridFormaPagamentoDBTableView1NF_TIPO_PAGTO: TcxGridDBColumn
            DataBinding.FieldName = 'NF_TIPO_PAGTO'
            Visible = False
          end
          object GridFormaPagamentoDBTableView1CODNF_TIPO_PAGTO: TcxGridDBColumn
            DataBinding.FieldName = 'CODNF_TIPO_PAGTO'
            Visible = False
          end
          object GridFormaPagamentoDBTableView1TEM_TEF: TcxGridDBColumn
            Caption = 'Usa TEF ?'
            DataBinding.FieldName = 'TEM_TEF'
          end
          object GridFormaPagamentoDBTableView1OBRIGACAO_DOC_FISCAL: TcxGridDBColumn
            DataBinding.FieldName = 'OBRIGACAO_DOC_FISCAL'
            Visible = False
          end
          object GridFormaPagamentoDBTableView1TIPO_DOC_FISCAL: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_DOC_FISCAL'
            Visible = False
          end
        end
        object GridFormaPagamentoLevel1: TcxGridLevel
          GridView = GridFormaPagamentoDBTableView1
        end
      end
      object Label1: TLabel
        Left = 287
        Top = 115
        Width = 238
        Height = 48
        Alignment = taCenter
        Caption = 'Selecione a forma de pagamento'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object edtValor_Pagto: TcxCurrencyEdit
        Left = 287
        Top = 265
        Margins.Left = 0
        Margins.Top = 0
        AutoSize = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = 'R$0.00;-R$0.00'
        Properties.UseLeftAlignmentOnEditing = False
        Properties.OnEditValueChanged = edtValor_PagtoPropertiesEditValueChanged
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clMoneyGreen
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -24
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.Shadow = False
        Style.IsFontAssigned = True
        TabOrder = 0
        OnKeyDown = edtValor_PagtoKeyDown
        Height = 55
        Width = 238
      end
      object btCancelar: TBitBtn
        Left = 10
        Top = 326
        Width = 271
        Height = 28
        Cancel = True
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ModalResult = 2
        ParentFont = False
        TabOrder = 2
      end
      object btGravar: TBitBtn
        Left = 287
        Top = 326
        Width = 238
        Height = 28
        Caption = 'Gravar'
        Default = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ModalResult = 1
        ParentFont = False
        TabOrder = 3
      end
      object Label2: TLabel
        Left = 10
        Top = 10
        Width = 515
        Height = 22
        Caption = 'Selecione a forma de pagamento'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object dxLayoutControl6Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignHorz = ahLeft
        AlignVert = avClient
        Control = GridFormaPagamento
        ControlOptions.OriginalHeight = 230
        ControlOptions.OriginalWidth = 271
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup17
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = Label1
        ControlOptions.AlignVert = avCenter
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 48
        ControlOptions.OriginalWidth = 238
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup17
        AlignHorz = ahRight
        AlignVert = avBottom
        CaptionOptions.Text = 'Digite o valor'
        CaptionOptions.Layout = clTop
        Control = edtValor_Pagto
        ControlOptions.OriginalHeight = 55
        ControlOptions.OriginalWidth = 238
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutGroup3: TdxLayoutGroup
        Parent = dxLayoutControl6Group_Root
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup17: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup3
        AlignHorz = ahRight
        Index = 0
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avBottom
        CaptionOptions.Visible = False
        Control = btCancelar
        ControlOptions.OriginalHeight = 28
        ControlOptions.OriginalWidth = 271
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        CaptionOptions.Visible = False
        Control = btGravar
        ControlOptions.OriginalHeight = 28
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl6Group_Root
        LayoutDirection = ldHorizontal
        Index = 2
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutControl6Group_Root
        CaptionOptions.Visible = False
        Control = Label2
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 65
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  object Tipo_Pagamento: TFDQuery
    Connection = DMBanco.Banco
    SQL.Strings = (
      
        'SELECT TP.CODIGO, TP.DESCRICAO,TP.NF_TIPO_PAGTO as CODNF_TIPO_PA' +
        'GTO, NFT.DESCRICAO AS NF_TIPO_PAGTO, TEM_TEF, OBRIGACAO_DOC_FISC' +
        'AL, TIPO_DOC_FISCAL FROM TIPO_PAGAMENTO TP'
      'LEFT JOIN NF_TIPO_PAGAMENTO NFT ON NFT.CODIGO = TP.NF_TIPO_PAGTO'
      'WHERE TP.ATIVO = '#39'S'#39
      ''
      '')
    Left = 184
    Top = 64
    object Tipo_PagamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Tipo_PagamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object Tipo_PagamentoNF_TIPO_PAGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NF_TIPO_PAGTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object Tipo_PagamentoCODNF_TIPO_PAGTO: TStringField
      FieldName = 'CODNF_TIPO_PAGTO'
      Origin = 'NF_TIPO_PAGTO'
      Size = 2
    end
    object Tipo_PagamentoTEM_TEF: TStringField
      FieldName = 'TEM_TEF'
      Origin = 'TEM_TEF'
      Size = 1
    end
    object Tipo_PagamentoOBRIGACAO_DOC_FISCAL: TStringField
      FieldName = 'OBRIGACAO_DOC_FISCAL'
      Origin = 'OBRIGACAO_DOC_FISCAL'
    end
    object Tipo_PagamentoTIPO_DOC_FISCAL: TStringField
      FieldName = 'TIPO_DOC_FISCAL'
      Origin = 'TIPO_DOC_FISCAL'
      Size = 10
    end
  end
  object DSTipoPagamento: TDataSource
    DataSet = Tipo_Pagamento
    Left = 212
    Top = 64
  end
end
