object FrmNotaFiscal: TFrmNotaFiscal
  Left = 0
  Top = 0
  Caption = 'Notas Fiscais'
  ClientHeight = 513
  ClientWidth = 1070
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poOwnerFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 22
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object PnlInutilizadas: TPanel
    Left = 413
    Top = 72
    Width = 599
    Height = 335
    Caption = 'Numera'#231#227'o de Notas Fiscais Inutilizadas'
    TabOrder = 2
    Visible = False
    object dxLayoutControl4: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 597
      Height = 333
      Align = alClient
      TabOrder = 0
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 597
        Height = 307
        TabOrder = 0
        object cxGrid3DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid3DBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DSInutilizacao
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxGrid3DBTableView1Ambiente: TcxGridDBColumn
            DataBinding.FieldName = 'Ambiente'
            Width = 84
          end
          object cxGrid3DBTableView1NF_PROTOCOLO: TcxGridDBColumn
            Caption = 'Protocolo'
            DataBinding.FieldName = 'NF_PROTOCOLO'
            Width = 149
          end
          object cxGrid3DBTableView1NF_DT_INUTILIZACAO: TcxGridDBColumn
            Caption = 'Data de Inutiliza'#231#227'o'
            DataBinding.FieldName = 'NF_DT_INUTILIZACAO'
            Width = 110
          end
          object cxGrid3DBTableView1NF_NUM_INICIAL_INUTILIZACAO: TcxGridDBColumn
            Caption = 'N'#186' Inicial'
            DataBinding.FieldName = 'NF_NUM_INICIAL_INUTILIZACAO'
            Width = 74
          end
          object cxGrid3DBTableView1NF_NUM_FINAL_INUTILIZACAO: TcxGridDBColumn
            Caption = 'N'#186' Final'
            DataBinding.FieldName = 'NF_NUM_FINAL_INUTILIZACAO'
            Width = 78
          end
          object cxGrid3DBTableView1MOTIVO_INUTILIZACAO: TcxGridDBColumn
            Caption = 'Motivo Inutiliza'#231#227'o'
            DataBinding.FieldName = 'MOTIVO_INUTILIZACAO'
            Visible = False
          end
          object cxGrid3DBTableView1NF_MOTIVO_STATUS: TcxGridDBColumn
            Caption = 'Motivo Status'
            DataBinding.FieldName = 'NF_MOTIVO_STATUS'
            Visible = False
            Width = 288
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
      object btnFecharInutilizadas: TcxButton
        Left = 498
        Top = 308
        Width = 99
        Height = 25
        Caption = 'Fechar'
        TabOrder = 1
        OnClick = btnFecharInutilizadasClick
      end
      object dxLayoutControl4Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControl4Item1: TdxLayoutItem
        Parent = dxLayoutControl4Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        Control = cxGrid3
        ControlOptions.OriginalHeight = 202
        ControlOptions.OriginalWidth = 387
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl4Item2: TdxLayoutItem
        Parent = dxLayoutControl4Group_Root
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton3'
        CaptionOptions.Visible = False
        Control = btnFecharInutilizadas
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 99
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  object pnlConfirmaNFE: TPanel
    Left = 392
    Top = 8
    Width = 545
    Height = 545
    Caption = 'pnlConsultaNFE'
    TabOrder = 1
    Visible = False
    object dxLayoutControl2: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 543
      Height = 543
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object MemoJustificativa: TcxMemo
        Left = 5
        Top = 622
        ParentFont = False
        Properties.ScrollBars = ssVertical
        Properties.OnChange = MemoJustificativaPropertiesChange
        TabOrder = 16
        Height = 122
        Width = 516
      end
      object EdtChave: TcxTextEdit
        Left = 17
        Top = 219
        Style.HotTrack = False
        TabOrder = 5
        Width = 492
      end
      object EdtIDCod: TcxTextEdit
        Left = 17
        Top = 255
        Style.HotTrack = False
        TabOrder = 6
        Width = 492
      end
      object EdtCNPJ: TcxTextEdit
        Left = 17
        Top = 291
        Style.HotTrack = False
        TabOrder = 7
        Width = 492
      end
      object EdtNumeroProtocolo: TcxTextEdit
        Left = 17
        Top = 327
        Style.HotTrack = False
        TabOrder = 8
        Width = 492
      end
      object EdtInscricaoMunicipal: TcxTextEdit
        Left = 17
        Top = 399
        Style.HotTrack = False
        TabOrder = 10
        Width = 492
      end
      object btnConfirma: TcxButton
        Left = 318
        Top = 778
        Width = 101
        Height = 25
        Caption = '&Confirma'
        ModalResult = 1
        OptionsImage.ImageIndex = 1
        OptionsImage.Images = ImgListBotoes16
        TabOrder = 19
        OnClick = btnConfirmaClick
      end
      object btnCancelar: TcxButton
        Left = 420
        Top = 778
        Width = 101
        Height = 25
        Caption = 'Canc&elar'
        ModalResult = 2
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = ImgListBotoes16
        TabOrder = 20
        OnClick = btnCancelarClick
      end
      object lblCartaCorrecao: TcxLabel
        Left = 17
        Top = 485
        Caption = 
          #8220'A Carta de Corre'#231#227'o '#233' disciplinada pelo '#167' 1'#186'-A do art. 7'#186' do Co' +
          'nv'#234'nio S/N, de 15 de dezembro de 1970 e pode ser utilizada para ' +
          'regulariza'#231#227'o de erro ocorrido na emiss'#227'o de documento fiscal, d' +
          'esde que o erro n'#227'o esteja relacionado com: '
        Style.HotTrack = False
        Style.TextColor = clRed
        Properties.WordWrap = True
        Transparent = True
        Width = 492
      end
      object lblCartaCorrecaoI: TcxLabel
        Left = 17
        Top = 529
        Caption = 
          'I - as vari'#225'veis que determinam o valor do imposto tais como: ba' +
          'se de c'#225'lculo, al'#237'quota, diferen'#231'a de pre'#231'o, quantidade, valor d' +
          'a opera'#231#227'o ou da presta'#231#227'o;'
        Style.HotTrack = False
        Style.TextColor = clRed
        Properties.WordWrap = True
        Transparent = True
        Width = 492
      end
      object lblCartaCorrecaoII: TcxLabel
        Left = 17
        Top = 560
        Caption = 
          'II - a corre'#231#227'o de dados cadastrais que implique mudan'#231'a do reme' +
          'tente ou do destinat'#225'rio;'
        Style.HotTrack = False
        Style.TextColor = clRed
        Properties.WordWrap = True
        Transparent = True
        Width = 492
      end
      object lblCartaCorrecaoIII: TcxLabel
        Left = 17
        Top = 578
        Caption = 'III - a data de emiss'#227'o ou de sa'#237'da.'#8221
        Style.HotTrack = False
        Style.TextColor = clRed
        Properties.WordWrap = True
        Transparent = True
        Width = 492
      end
      object cxLabel1: TcxDBLabel
        Left = 17
        Top = 37
        DataBinding.DataField = 'NF_NUMERO'
        DataBinding.DataSource = DS
        ParentColor = False
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
        Height = 17
        Width = 113
      end
      object cxLabel2: TcxDBLabel
        Left = 131
        Top = 37
        DataBinding.DataField = 'NF_CHAVE'
        DataBinding.DataSource = DS
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
        Height = 17
        Width = 378
      end
      object cxLabel4: TcxDBLabel
        Left = 131
        Top = 69
        DataBinding.DataField = 'NF_RAZAOSOCIAL'
        DataBinding.DataSource = DS
        ParentColor = False
        ParentFont = False
        Properties.WordWrap = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
        Height = 17
        Width = 378
      end
      object cxLabel3: TcxDBLabel
        Left = 17
        Top = 69
        DataBinding.DataField = 'NF_DT_EMISSAO'
        DataBinding.DataSource = DS
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
        Height = 17
        Width = 113
      end
      object EdtCaracteresRestantes: TcxCurrencyEdit
        Left = 121
        Top = 745
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = '###0'
        Properties.ReadOnly = True
        Style.Color = clInactiveCaption
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.TextColor = clRed
        Style.IsFontAssigned = True
        TabOrder = 17
        Width = 46
      end
      object edtCartasdeCorrecaoRestantes: TcxCurrencyEdit
        Left = 485
        Top = 745
        AutoSize = False
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = '#0'
        Properties.ReadOnly = True
        Style.Color = clInactiveCaption
        Style.HotTrack = False
        Style.TextColor = clRed
        Style.TextStyle = [fsBold]
        TabOrder = 18
        Height = 21
        Width = 36
      end
      object EdtEmailDestino: TcxComboBox
        Left = 5
        Top = 447
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.OnChange = EdtEmailDestinoPropertiesChange
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Lucida Console'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 11
        Width = 516
      end
      object edtNumeroInicial: TcxTextEdit
        Left = 17
        Top = 363
        Style.HotTrack = False
        TabOrder = 9
        Width = 492
      end
      object RgNFSeCodigoCancelamento: TRadioGroup
        Left = 17
        Top = 124
        Width = 492
        Height = 80
        Caption = 'C'#243'digo de Cancelamento'
        ItemIndex = 0
        Items.Strings = (
          '1 - Erro de emiss'#227'o'
          '2 - Servi'#231'o n'#227'o conclu'#237'do'
          '3 - RPS cancelado na emiss'#227'o')
        TabOrder = 4
      end
      object dxLayoutControl2Group_Root: TdxLayoutGroup
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
      object dxLayoutControl2Group4: TdxLayoutGroup
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Text = 'Dados da Nota'
        Offsets.Bottom = 5
        Index = 0
      end
      object LayoutItemJustificativa: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'Justificativa'
        CaptionOptions.Layout = clTop
        Control = MemoJustificativa
        ControlOptions.MinHeight = 80
        ControlOptions.OriginalHeight = 122
        ControlOptions.OriginalWidth = 508
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object GrupoDetalhes: TdxLayoutGroup
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ButtonOptions.ShowExpandButton = True
        OnCollapsed = GrupoDetalhesCollapsed
        OnExpanded = GrupoDetalhesExpanded
        Index = 1
      end
      object LayoutItemChave: TdxLayoutItem
        Parent = GrupoDetalhes
        CaptionOptions.Text = 'Chave da NF-e'
        CaptionOptions.Layout = clTop
        Control = EdtChave
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 484
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object LayoutItemIDCod: TdxLayoutItem
        Parent = GrupoDetalhes
        CaptionOptions.Text = 'Identificador de controle do Lote de envio do Evento'
        CaptionOptions.Layout = clTop
        Control = EdtIDCod
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 484
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object LayoutItemCNPJ: TdxLayoutItem
        Parent = GrupoDetalhes
        CaptionOptions.Text = 'CNPJ ou o CPF do autor do Evento'
        CaptionOptions.Layout = clTop
        Control = EdtCNPJ
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 484
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object LayoutItemNumeroProtocoloCod: TdxLayoutItem
        Parent = GrupoDetalhes
        CaptionOptions.Text = 'N'#250'mero do Protocolo'
        CaptionOptions.Layout = clTop
        Control = EdtNumeroProtocolo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 484
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object LayoutItemIncricaoMunicipal: TdxLayoutItem
        Parent = GrupoDetalhes
        CaptionOptions.Text = 'Inscri'#231#227'o Municipal'
        CaptionOptions.Layout = clTop
        Control = EdtInscricaoMunicipal
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 484
        ControlOptions.ShowBorder = False
        Index = 6
      end
      object dxLayoutControl2Group3: TdxLayoutGroup
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 7
      end
      object dxLayoutControl2Item5: TdxLayoutItem
        Parent = dxLayoutControl2Group3
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton2'
        CaptionOptions.Visible = False
        Control = btnConfirma
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 101
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl2Item8: TdxLayoutItem
        Parent = dxLayoutControl2Group3
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton2'
        CaptionOptions.Visible = False
        Control = btnCancelar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 101
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object GrupoInformacoesCCe: TdxLayoutGroup
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        Index = 3
      end
      object dxLayoutControl2Item3: TdxLayoutItem
        Parent = GrupoInformacoesCCe
        CaptionOptions.Text = 'cxLabel6'
        CaptionOptions.Visible = False
        Control = lblCartaCorrecao
        ControlOptions.OriginalHeight = 43
        ControlOptions.OriginalWidth = 480
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl2Item7: TdxLayoutItem
        Parent = GrupoInformacoesCCe
        CaptionOptions.Visible = False
        Control = lblCartaCorrecaoI
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 474
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl2Item9: TdxLayoutItem
        Parent = GrupoInformacoesCCe
        CaptionOptions.Visible = False
        Control = lblCartaCorrecaoII
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 442
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl2Item10: TdxLayoutItem
        Parent = GrupoInformacoesCCe
        CaptionOptions.Visible = False
        Control = lblCartaCorrecaoIII
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 179
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutControl2Group1: TdxLayoutGroup
        Parent = dxLayoutControl2Group4
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutControl2Item6: TdxLayoutItem
        Parent = dxLayoutControl2Group1
        CaptionOptions.Text = 'N'#250'mero da Nota:'
        CaptionOptions.Layout = clTop
        Control = cxLabel1
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 113
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl2Item1: TdxLayoutItem
        Parent = dxLayoutControl2Group1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Chave:'
        CaptionOptions.Layout = clTop
        Control = cxLabel2
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 198
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl2Group2: TdxLayoutGroup
        Parent = dxLayoutControl2Group4
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutControl2Item2: TdxLayoutItem
        Parent = dxLayoutControl2Group2
        AlignHorz = ahClient
        CaptionOptions.Text = 'Respons'#225'vel:'
        CaptionOptions.Layout = clTop
        Control = cxLabel4
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 238
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl2Item4: TdxLayoutItem
        Parent = dxLayoutControl2Group2
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Data de Emiss'#227'o:'
        CaptionOptions.Layout = clTop
        Control = cxLabel3
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 113
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl2SeparatorItem1: TdxLayoutSeparatorItem
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahClient
        AlignVert = avBottom
        Offsets.Bottom = 2
        Offsets.Top = 2
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
        CaptionOptions.Text = 'Separator'
        Index = 6
      end
      object GrupoQuantidades: TdxLayoutGroup
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 5
      end
      object dxLayoutControl2Item12: TdxLayoutItem
        Parent = GrupoQuantidades
        CaptionOptions.Text = '  Caracteres Restantes:'
        Control = EdtCaracteresRestantes
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 46
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object LayoutItemQtdCartasRestantes: TdxLayoutItem
        Parent = GrupoQuantidades
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Text = 'Cartas de Corre'#231#227'o Restantes:'
        Control = edtCartasdeCorrecaoRestantes
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 36
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object LayoutItemEmailDestino: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'Email de destino'
        CaptionOptions.Layout = clTop
        Control = EdtEmailDestino
        ControlOptions.OriginalHeight = 19
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object LayoutItemNumeroInicial: TdxLayoutItem
        Parent = GrupoDetalhes
        CaptionOptions.Text = 'N'#250'mero Inicial'
        CaptionOptions.Layout = clTop
        Control = edtNumeroInicial
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object LiRgNFSeCodigoCancelamento: TdxLayoutItem
        Parent = GrupoDetalhes
        Control = RgNFSeCodigoCancelamento
        ControlOptions.OriginalHeight = 80
        ControlOptions.OriginalWidth = 185
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1070
    Height = 513
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    object PageControl: TPageControl
      Left = 12
      Top = 430
      Width = 1046
      Height = 71
      ActivePage = Dados
      TabOrder = 25
      object TabSheet5: TTabSheet
        Caption = 'Respostas'
        object MemoResposta: TMemo
          Left = 0
          Top = 0
          Width = 1038
          Height = 43
          Align = alClient
          ReadOnly = True
          TabOrder = 0
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'XML Resposta'
        ImageIndex = 1
        object HTMLViewer1: THtmlViewer
          Left = 0
          Top = 0
          Width = 1038
          Height = 43
          BorderStyle = htNone
          DefBackground = clWhite
          DefFontName = 'Times New Roman'
          DefPreFontName = 'Courier New'
          HistoryMaxCount = 0
          ImageCacheCount = 0
          MarginHeight = 0
          NoSelect = False
          PrintMarginBottom = 2.000000000000000000
          PrintMarginLeft = 2.000000000000000000
          PrintMarginRight = 2.000000000000000000
          PrintMarginTop = 2.000000000000000000
          PrintScale = 1.000000000000000000
          ScrollBars = ssVertical
          Text = ''
          ViewImages = False
          VisitedMaxCount = 0
          Align = alClient
          TabOrder = 0
          Touch.InteractiveGestures = [igPan]
          Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia]
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'Log'
        ImageIndex = 2
        object memoLog: TMemo
          Left = 0
          Top = 0
          Width = 1038
          Height = 43
          Align = alClient
          ReadOnly = True
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
          Width = 1038
          Height = 43
          Align = alClient
          Indent = 19
          TabOrder = 0
        end
      end
      object TabSheet10: TTabSheet
        Caption = 'Retorno Completo WS'
        ImageIndex = 4
        object memoRespostaWeb: TMemo
          Left = 0
          Top = 0
          Width = 1038
          Height = 43
          Align = alClient
          ReadOnly = True
          TabOrder = 0
        end
      end
      object Dados: TTabSheet
        Caption = 'Dados'
        ImageIndex = 5
        object MemoDadosResposta: TMemo
          Left = 0
          Top = 0
          Width = 1038
          Height = 43
          Align = alClient
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object cxGrid2: TcxGrid
      Left = 0
      Top = 331
      Width = 1070
      Height = 62
      PopupMenu = MenuEventos
      TabOrder = 24
      object cxGrid2DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid2DBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSEvento
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGrid2DBTableView1NF_SEQUENCIA_EVENTO: TcxGridDBColumn
          Caption = 'Seq. Evento'
          DataBinding.FieldName = 'NF_SEQUENCIA_EVENTO'
          Options.Editing = False
        end
        object cxGrid2DBTableView1NF_NUMERO: TcxGridDBColumn
          Caption = 'N'#250'mero'
          DataBinding.FieldName = 'NF_NUMERO'
          Options.Editing = False
        end
        object cxGrid2DBTableView1TIPO: TcxGridDBColumn
          Caption = 'Evento'
          DataBinding.FieldName = 'TIPO'
          Options.Editing = False
        end
        object cxGrid2DBTableView1CODVENDA: TcxGridDBColumn
          Caption = 'Venda'
          DataBinding.FieldName = 'CODVENDA'
          Options.Editing = False
          Width = 87
        end
        object cxGrid2DBTableView1NF_DT_EMISSAO: TcxGridDBColumn
          Caption = 'Data Emiss'#227'o'
          DataBinding.FieldName = 'NF_DT_EMISSAO'
          Options.Editing = False
          Width = 77
        end
        object cxGrid2DBTableView1NF_DT_CANCELAMENTO: TcxGridDBColumn
          Caption = 'Data Cancelamento'
          DataBinding.FieldName = 'NF_DT_CANCELAMENTO'
          Options.Editing = False
          Width = 110
        end
        object cxGrid2DBTableView1NF_MOTIVO_STATUS: TcxGridDBColumn
          Caption = 'Motivo Status'
          DataBinding.FieldName = 'NF_MOTIVO_STATUS'
          Options.Editing = False
          Width = 214
        end
        object cxGrid2DBTableView1Ambiente: TcxGridDBColumn
          DataBinding.FieldName = 'Ambiente'
          Options.Editing = False
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 187
      Width = 1070
      Height = 113
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = cxcbsNone
      TabOrder = 23
      object cxGridDBTableView2: TcxGridDBTableView
        PopupMenu = PopupMenuNFe
        OnDblClick = cxGridDBTableView2DblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = cxGridDBTableView2CustomDrawCell
        DataController.DataModeController.GridModeBufferCount = 50
        DataController.DataSource = DS
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            FieldName = 'TOTAL'
            Column = cxGridDBTableView2TOTAL
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'TOTAL'
            Column = cxGridDBTableView2TOTAL
            DisplayText = 'L'#237'quido'
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'TOTAL_PRODUTOS'
            Column = cxGridDBTableView2TOTAL_PRODUTOS
            DisplayText = 'Produto'
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'TOTAL_SERVICOS'
            Column = cxGridDBTableView2TOTAL_SERVICOS
            DisplayText = 'Servi'#231'o'
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'NF_VALOR_ISS_RETIDO'
            Column = cxGridDBTableView2NF_VALOR_ISS_RETIDO
            DisplayText = 'Retido'
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'VDESC'
            Column = cxGridDBTableView2VDESC
            DisplayText = 'Desconto'
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'VALOR'
            Column = cxGridDBTableView2Valor
            DisplayText = 'Valor Bruto'
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Click aqui para definir um filtro'
        NewItemRow.InfoText = 'Click aqui para adicionar um novo registro'
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = '<Nenhuma Nota Fiscal para exibir. Utilize o menu Pesquisa>'
        OptionsView.CellTextMaxLineCount = 1
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.Footer = True
        OptionsView.GridLines = glNone
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.GroupSummaryLayout = gslAlignWithColumns
        object cxGridDBTableView2CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object cxGridDBTableView2NF_NUMERO: TcxGridDBColumn
          Caption = 'N'#250'mero'
          DataBinding.FieldName = 'NF_NUMERO'
          Width = 115
        end
        object cxGridDBTableView2NF_SITUACAO: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'NF_SITUACAO'
          Width = 79
        end
        object cxGridDBTableView2CODVENDA: TcxGridDBColumn
          Caption = 'Venda'
          DataBinding.FieldName = 'CODVENDA'
          Width = 60
        end
        object cxGridDBTableView2NF_RAZAO_SOCIAL: TcxGridDBColumn
          Caption = 'Raz'#227'o Social'
          DataBinding.FieldName = 'NF_RAZAOSOCIAL'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.ShowEndEllipsis = True
          Width = 262
        end
        object cxGridDBTableView2NF_DT_EMISSAO: TcxGridDBColumn
          Caption = 'Data Emiss'#227'o'
          DataBinding.FieldName = 'NF_DT_EMISSAO'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'DD/MM/YYYY'
        end
        object cxGridDBTableView2NF_CHAVE: TcxGridDBColumn
          Caption = 'Chave'
          DataBinding.FieldName = 'NF_CHAVE'
          Visible = False
          Width = 284
        end
        object cxGridDBTableView2NF_TIPO: TcxGridDBColumn
          Caption = 'Entrada / Sa'#237'da'
          DataBinding.FieldName = 'NF_TIPO'
          PropertiesClassName = 'TcxTextEditProperties'
          Visible = False
          OnGetDataText = cxGridDBTableView2NF_TIPOGetDataText
          Width = 82
        end
        object cxGridDBTableView2NF_PROTOCOLO: TcxGridDBColumn
          Caption = 'Protocolo'
          DataBinding.FieldName = 'NF_PROTOCOLO'
          Visible = False
        end
        object cxGridDBTableView2NF_NATUREZA_OPERACAO: TcxGridDBColumn
          Caption = 'Natureza da Opera'#231#227'o'
          DataBinding.FieldName = 'NF_NATUREZA_OPERACAO'
          Visible = False
          Width = 128
        end
        object cxGridDBTableView2AMBIENTE: TcxGridDBColumn
          DataBinding.FieldName = 'AMBIENTE'
        end
        object cxGridDBTableView2NF_PROTOCOLO_CANCELAMENTO: TcxGridDBColumn
          Caption = 'Protocolo de Cancelamento'
          DataBinding.FieldName = 'NF_PROTOCOLO_CANCELAMENTO'
          Visible = False
          Width = 137
        end
        object cxGridDBTableView2NF_DT_CANCELAMENTO: TcxGridDBColumn
          Caption = 'Data de Cancelamento'
          DataBinding.FieldName = 'NF_DT_CANCELAMENTO'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'DD/MM/YYYY hh:mm'
          Visible = False
          Width = 114
        end
        object cxGridDBTableView2MOTIVO_CANCELAMENTO: TcxGridDBColumn
          Caption = 'Motivo Cancelamento'
          DataBinding.FieldName = 'MOTIVO_CANCELAMENTO'
          Visible = False
          Width = 131
        end
        object cxGridDBTableView2NF_STATUS: TcxGridDBColumn
          Caption = 'NF Status'
          DataBinding.FieldName = 'NF_CSTAT'
          Visible = False
        end
        object cxGridDBTableView2NF_MOTIVO_STATUS: TcxGridDBColumn
          Caption = 'Motivo Status'
          DataBinding.FieldName = 'NF_MOTIVO_STATUS'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.WordWrap = False
          OnGetCellHint = cxGridDBTableView2NF_MOTIVO_STATUSGetCellHint
          Width = 165
        end
        object cxGridDBTableView2CodEmpresa: TcxGridDBColumn
          Caption = 'C'#243'd. Empresa'
          DataBinding.FieldName = 'CODEMPRESA'
          Visible = False
        end
        object cxGridDBTableView2NF_SEQUENCIA_EVENTO: TcxGridDBColumn
          Caption = 'Sequ'#234'ncia Evento'
          DataBinding.FieldName = 'NF_SEQUENCIA_EVENTO'
          Visible = False
        end
        object cxGridDBTableView2TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
        end
        object cxGridDBTableView2NF_DIGEST_VALUE: TcxGridDBColumn
          Caption = 'Digest Value'
          DataBinding.FieldName = 'NF_DIGEST_VALUE'
          Visible = False
        end
        object cxGridDBTableView2STATUS: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'STATUS'
          Visible = False
        end
        object cxGridDBTableView2NF_VPIS: TcxGridDBColumn
          Caption = 'R$ PIS'
          DataBinding.FieldName = 'NF_PIS_VPIS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cxGridDBTableView2NF_VCOFINS: TcxGridDBColumn
          Caption = 'R$ COFINS'
          DataBinding.FieldName = 'NF_VCOFINS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cxGridDBTableView2NF_VST: TcxGridDBColumn
          Caption = 'R$ ST'
          DataBinding.FieldName = 'NF_VST'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 88
        end
        object cxGridDBTableView2TOTAL: TcxGridDBColumn
          Caption = 'R$ Valor L'#237'quido'
          DataBinding.FieldName = 'TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 106
        end
        object cxGridDBTableView2Valor: TcxGridDBColumn
          Caption = 'R$ Valor Bruto'
          DataBinding.FieldName = 'VALOR'
          Width = 111
        end
        object cxGridDBTableView2TOTAL_PRODUTOS: TcxGridDBColumn
          Caption = 'R$ Produto'
          DataBinding.FieldName = 'TOTAL_PRODUTOS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 81
        end
        object cxGridDBTableView2TOTAL_SERVICOS: TcxGridDBColumn
          Caption = 'R$ Servi'#231'o'
          DataBinding.FieldName = 'TOTAL_SERVICOS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 84
        end
        object cxGridDBTableView2NF_VALOR_ISS_RETIDO: TcxGridDBColumn
          Caption = 'R$  ISS Retido'
          DataBinding.FieldName = 'NF_VALOR_ISS_RETIDO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 102
        end
        object cxGridDBTableView2RPS: TcxGridDBColumn
          Caption = 'RPS NFSe'
          DataBinding.FieldName = 'NFSE_RPS'
        end
        object cxGridDBTableView2VDESC: TcxGridDBColumn
          Caption = 'Desconto'
          DataBinding.FieldName = 'VDESC'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 105
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
    object CkExibirNFe: TcxCheckBox
      Left = 24
      Top = 36
      Caption = 'NFe'
      ParentColor = False
      Properties.OnChange = CbExibirNFePropertiesChange
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
    end
    object CkExibirNFSe: TcxCheckBox
      Left = 24
      Top = 58
      Caption = 'NFSe'
      ParentColor = False
      Properties.OnChange = CbExibirNFSePropertiesChange
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
    end
    object CkExibirNFCe: TcxCheckBox
      Left = 24
      Top = 80
      Caption = 'NFCe'
      ParentColor = False
      Properties.OnChange = btnPesquisarClick
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 6
      Transparent = True
    end
    object CkExibirConfirmada: TcxCheckBox
      Left = 170
      Top = 36
      Caption = 'Confirmada / Autorizada'
      Properties.OnChange = CbExibirConfirmadaPropertiesChange
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 8
      Transparent = True
    end
    object CkExibirDenegada: TcxCheckBox
      Left = 170
      Top = 57
      Caption = 'Denegada'
      Properties.OnChange = btnPesquisarClick
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 9
      Transparent = True
    end
    object CkExibirCancelada: TcxCheckBox
      Left = 170
      Top = 78
      Caption = 'Cancelada'
      Properties.OnChange = CbExibirCanceladaPropertiesChange
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 10
      Transparent = True
    end
    object CkExibirNaoAutorizada: TcxCheckBox
      Left = 170
      Top = 99
      Caption = 'N'#227'o Autorizada'
      Properties.OnChange = btnPesquisarClick
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 11
      Transparent = True
    end
    object CkExibirDesconhecido: TcxCheckBox
      Left = 170
      Top = 120
      Caption = 'Desconhecida'
      Properties.OnChange = CkExibirDesconhecidoPropertiesChange
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 12
      Transparent = True
    end
    object CbAmbiente: TcxComboBox
      Left = 316
      Top = 50
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Todos'
        'Produ'#231#227'o'
        'Homologa'#231#227'o')
      Properties.OnChange = CbAmbientePropertiesChange
      Style.HotTrack = False
      TabOrder = 14
      Text = 'Todos'
      Width = 130
    end
    object CkExibirInativos: TcxCheckBox
      Left = 316
      Top = 141
      Caption = 'Visualizar Inativos'
      Properties.OnChange = CkExibirInativosPropertiesChange
      Style.HotTrack = False
      TabOrder = 15
      Transparent = True
    end
    object CbEmpresa: TcxComboBox
      Left = 464
      Top = 32
      Enabled = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ReadOnly = False
      Properties.OnChange = CbEmpresaPropertiesChange
      Style.HotTrack = False
      TabOrder = 16
      Width = 359
    end
    object EdtNumero: TcxTextEdit
      Left = 464
      Top = 68
      Hint = 'Voc'#234' pode pesquisar por intervalo de n'#250'meros, Ex: 10-20'
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 17
      Width = 181
    end
    object EdtCodVenda: TcxTextEdit
      Left = 646
      Top = 68
      Properties.OnChange = EdtCodVendaPropertiesChange
      Style.HotTrack = False
      TabOrder = 18
      Width = 177
    end
    object EdtDtInicial: TcxDateEdit
      Left = 464
      Top = 104
      AutoSize = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 19
      Height = 21
      Width = 110
    end
    object EdtDtFinal: TcxDateEdit
      Left = 593
      Top = 104
      Properties.DisplayFormat = 'DD/MM/YYYY'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 20
      Width = 110
    end
    object BtnProfEmissao: TcxDateProfileButton
      Left = 704
      Top = 104
      Width = 21
      Height = 21
      Hint = 'Clique para selecionar um per'#237'odo'
      Caption = 'BtnProfEmissao'
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
      TabOrder = 21
      DateEditInicio = EdtDtInicial
      DateEditFim = EdtDtFinal
    end
    object btnPesquisar: TcxButton
      Left = 736
      Top = 90
      Width = 87
      Height = 35
      Caption = 'Pesquisar'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000003000000050000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000011110FCD4D4D4BB00000000700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000001121212CE7B7A7AFFDDDDDDDD1716161900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000151514D06F6F6DFFDAD9D8E6070707080000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000C0C
        0CC75F5D5DFFCECDCCEC0909090A000000000000000000000000000000000000
        00000000000000000008000000200101010F0000000200000000040404BA504F
        4DFFBBB9B9DE1F1F1F1F00000000000000000000000000000000000000000000
        0021353434B88A7E77FCA28880FF96847DFE656161CB000000AE5B5B5AFEA7A6
        A5BF0F0F0F10000000000000000000000000000000000000000000000018857B
        77E0FFFDEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4DFFF958C88FF2E2F2F810000
        00000000000000000000000000000000000000000000000000021C1C1C9CF4EE
        DDF4F1F1F1F1DEDECBDECCCCCACCF3F3F3F3EEEEEEEEE4C7ADE4615B59CA0101
        010300000000000000000000000000000000000000000000000B6A5F5BC9E2E2
        E2E2C1C1BFC1ACAC9CAC9C9C9C9CE1E1DFE162626262CDCDCDCD81716AD80505
        051A000000000000000000000000000000000000000000000020625450B3C4C4
        C4C49C9C9C9C9C9C9C9CA6A6A3A69C9C9C9C9C9C9C9CB7B7B7B75A4B45B40909
        092B00000000000000000000000000000000000000000000000B362F2DA6C9C9
        C9C98E8E8E8E90908F909C9C9C9CC4C4C4C4B5B5B5B597979797423732B10404
        04150000000000000000000000000000000000000000000000021C1B1B7F908A
        889FD0D0D0D08E8E8E8E9C9C9C9CA7A7A7A799999999B1B1B1B13E3A3AB90101
        01020000000000000000000000000000000000000000000000000404040D2726
        2797EBEBEBEBECECECEC9D9D9D9DB4B4B4B4B3B3B3B325201F9E131212350000
        0000000000000000000000000000000000000000000000000000000000000A0A
        09182D2C2C820D0B0B8719181786181515862626269917161639000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000010101030404040F09080825050505120202020600000000000000000000
        00000000000000000000000000000000000000000000}
      TabOrder = 22
      OnClick = btnPesquisarClick
    end
    object ChkFiltrosContabilidade: TcxCheckBox
      Left = 872
      Top = 36
      Caption = 'Filtrar para a Contabilidade'
      Properties.OnChange = ChkFiltrosContabilidadePropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Transparent = True
    end
    object BtnContEnviar: TcxButton
      Left = 872
      Top = 137
      Width = 174
      Height = 25
      Caption = 'Enviar para a Contabilidade'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000004C543C8100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000097A776FF4C543C81000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000097A776FF97A7
        76FF97A776FF97A776FF97A776FF4C543C8100000000845D37B7B8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000097A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF4B533A7EB8824DFF000000005B40
        267EB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000097A776FF97A7
        76FF97A776FF97A776FF97A776FF4B533A7E00000000B8824DFF5D4227810000
        00005B40267EB8824DFFB8824DFFB8824DFF5B40267E00000000000000000000
        00000000000097A776FF4B533A7E0000000000000000B8824DFFB8824DFF5D42
        2781000000005B40267EB8824DFF5B40267E000000005B40267EB8824DFF5B40
        267E000000004B533A7E000000005D42278100000000B8824DFFB8824DFFB882
        4DFF5D422781000000005B40267E000000005D422781000000005B40267E0000
        000000000000000000005D422781B8824DFF00000000B8824DFFB8824DFFB882
        4DFFB8824DFF5B40267E000000005D422781B8824DFF5D422781000000005B40
        267EB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB8824DFFB882
        4DFF5B40267E000000005D422781B8824DFFB8824DFFB8824DFF5D4227810000
        00005B40267EB8824DFFB8824DFFB8824DFF00000000B8824DFFB8824DFF5B40
        267E000000005D422781B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF5D42
        2781000000005B40267EB8824DFFB8824DFF00000000B8824DFF5B40267E0000
        00005D422781B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFF5D422781000000005B40267EB8824DFF00000000B8824DFF000000005D42
        2781B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF5D42278100000000B8824DFF00000000886039BDB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF886039BD0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      OptionsImage.Spacing = 5
      TabOrder = 3
      OnClick = BtnContEnviarClick
    end
    object BtnContImprimir: TcxButton
      Left = 872
      Top = 111
      Width = 84
      Height = 25
      Caption = 'Imprimir'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF0000000000000000000000000000000000000000000000000000
        000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF848484FF000000000000000000000000000000002626264A848484FF8484
        84FF848484FF848484FFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFFFFF
        FFFF848484FF848484FF848484FF848484FF2626264A848484FF848484FF8484
        84FF848484FF848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF0000000000000000848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000848484FF848484FF848484FF777777E6848484FF8484
        84FF00000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF00000000848484FF848484FF777777E626262649848484FF8484
        84FF00000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF00000000848484FF848484FF2626264900000000000000000000
        000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF848484FF0000000000000000000000000000000000000000000000000000
        000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF848484FF0000000000000000000000000000000000000000000000000000
        000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF848484FF0000000000000000000000000000000000000000000000000000
        000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF848484FF0000000000000000000000000000000000000000000000000000
        000000000000848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      TabOrder = 1
      OnClick = BtnContImprimirClick
    end
    object BtnContSalvar: TcxButton
      Left = 957
      Top = 111
      Width = 89
      Height = 25
      Caption = 'Salvar'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000007E4C69B7AF6A
        93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
        93FFAF6A93FFAF6A93FFAF6A93FF7E4C69B70000000000000000AF6A93FFAF6A
        93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
        93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A93FFAF6A
        93FF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A93FFAF6A
        93FF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A93FFAF6A
        93FF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A93FFAF6A
        93FF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A93FFAF6A
        93FF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A93FFAF6A
        93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
        93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A93FFAF6A
        93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
        93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A93FFAF6A
        93FFAF6A93FF0000000000000000000000000000000000000000000000000000
        000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A93FFAF6A
        93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
        93FF00000000AF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A93FFAF6A
        93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000AF6A
        93FF00000000AF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A93FFAF6A
        93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000AF6A
        93FF00000000AF6A93FFAF6A93FFAF6A93FF0000000000000000824F6DBDAF6A
        93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
        93FF00000000AF6A93FFAF6A93FF824F6DBD0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      OptionsImage.Spacing = 5
      TabOrder = 2
      OnClick = BtnContSalvarClick
    end
    object CkExibirSAT: TcxCheckBox
      Left = 24
      Top = 102
      Caption = 'CFeSAT'
      ParentColor = False
      Properties.OnChange = btnPesquisarClick
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 7
      Transparent = True
    end
    object ckExibirEnviada: TcxCheckBox
      Left = 170
      Top = 141
      Caption = 'Enviada'
      Properties.OnChange = cxExibirEnviadaPropertiesChange
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 13
      Transparent = True
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = GrupoXML
      AlignHorz = ahClient
      AlignVert = avClient
      Control = PageControl
      ControlOptions.OriginalHeight = 103
      ControlOptions.OriginalWidth = 988
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoXML: TdxLayoutGroup
      Parent = GrupoDados
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'XML'
      CaptionOptions.Visible = False
      ButtonOptions.Alignment = gbaLeft
      ButtonOptions.ShowExpandButton = True
      LayoutDirection = ldHorizontal
      Index = 5
    end
    object dxLayoutControl1SplitterItem1: TdxLayoutSplitterItem
      Parent = GrupoDados
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      SizeOptions.Height = 15
      CaptionOptions.Text = 'Splitter'
      Index = 4
    end
    object GrupoDados: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 0
    end
    object GrupoEventos: TdxLayoutGroup
      Parent = GrupoDados
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Visible = False
      Padding.Right = 5
      Padding.AssignedValues = [lpavRight]
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = GrupoEventos
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = '  Eventos'
      CaptionOptions.Layout = clTop
      Control = cxGrid2
      ControlOptions.OriginalHeight = 86
      ControlOptions.OriginalWidth = 1012
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1SplitterItem2: TdxLayoutSplitterItem
      Parent = GrupoDados
      AlignHorz = ahClient
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      SizeOptions.Height = 15
      CaptionOptions.Text = 'Splitter'
      Index = 2
    end
    object LayoutItemGridNotas: TdxLayoutItem
      Parent = GrupoDados
      AlignVert = avClient
      CaptionOptions.Layout = clTop
      Control = cxGrid1
      ControlOptions.OriginalHeight = 149
      ControlOptions.OriginalWidth = 1012
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoCabecalho: TdxLayoutGroup
      Parent = GrupoDados
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Filtros de Pesquisa'
      ButtonOptions.Alignment = gbaLeft
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = GrupoCabecalho
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Tipo'
      ItemIndex = 3
      Index = 1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = CkExibirNFe
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = CkExibirNFSe
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = CkExibirNFCe
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = GrupoCabecalho
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Situa'#231#227'o'
      ItemIndex = 5
      Padding.AssignedValues = [lpavLeft]
      UseIndent = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = CkExibirConfirmada
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = CkExibirDenegada
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = CkExibirCancelada
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxCheckBox2'
      CaptionOptions.Visible = False
      Control = CkExibirNaoAutorizada
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = CkExibirDesconhecido
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object GrupoAvancado: TdxLayoutGroup
      Parent = GrupoCabecalho
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Avan'#231'ado'
      ItemIndex = 1
      Index = 3
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = GrupoAvancado
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Ambiente'
      CaptionOptions.Layout = clTop
      Control = CbAmbiente
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = GrupoAvancado
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = CkExibirInativos
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = GrupoCabecalho
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      Offsets.Left = 5
      ItemIndex = 2
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControlSelectEmpresa: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      AlignHorz = ahClient
      CaptionOptions.Text = 'Empresa:'
      CaptionOptions.Layout = clTop
      Control = CbEmpresa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 359
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahClient
      CaptionOptions.Text = 'N'#250'mero da Nota'
      CaptionOptions.Layout = clTop
      Control = EdtNumero
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 181
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahClient
      CaptionOptions.Text = 'C'#243'd. da Venda'
      CaptionOptions.Layout = clTop
      Control = EdtCodVenda
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 177
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      AlignVert = avTop
      CaptionOptions.Text = 'Per'#237'odo'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Per'#237'odo'
      CaptionOptions.Layout = clTop
      Control = EdtDtInicial
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1LabeledItem1: TdxLayoutLabeledItem
      Parent = dxLayoutControl1Group2
      AlignVert = avBottom
      Offsets.Left = 5
      Offsets.Right = 5
      CaptionOptions.Text = #224
      Index = 1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahClient
      AlignVert = avBottom
      Control = EdtDtFinal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = BtnProfEmissao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignVert = avBottom
      Offsets.Left = 10
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnPesquisar
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object GrupoContabilidade: TdxLayoutGroup
      Parent = GrupoCabecalho
      AlignHorz = ahRight
      CaptionOptions.Text = 'Contabilidade'
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoContabilidade
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = ChkFiltrosContabilidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoContabilidade
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = BtnContEnviar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 174
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = BtnContImprimir
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = BtnContSalvar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoContabilidade
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Visible = False
      Control = CkExibirSAT
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 48
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Visible = False
      Control = ckExibirEnviada
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  object PnlConsultaNFSe: TPanel
    Left = 392
    Top = -44
    Width = 545
    Height = 543
    Caption = 'pnlConsultaNFE'
    TabOrder = 3
    Visible = False
    object dxLayoutControl3: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 543
      Height = 541
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object edtNumeroInicialNFSe: TcxTextEdit
        Left = 15
        Top = 237
        Style.HotTrack = False
        TabOrder = 8
        Width = 251
      end
      object edtCNPJPrestador: TcxTextEdit
        Left = 15
        Top = 348
        Style.HotTrack = False
        TabOrder = 13
        Width = 251
      end
      object edtCNPJTomador: TcxTextEdit
        Left = 15
        Top = 423
        Style.HotTrack = False
        TabOrder = 16
        Width = 251
      end
      object btnConsultarNFSe: TcxButton
        Left = 325
        Top = 511
        Width = 101
        Height = 25
        Caption = '&Consultar'
        ModalResult = 1
        OptionsImage.ImageIndex = 1
        OptionsImage.Images = ImgListBotoes16
        TabOrder = 19
        OnClick = btnConsultarNFSeClick
      end
      object cxButton2: TcxButton
        Left = 427
        Top = 511
        Width = 101
        Height = 25
        Caption = 'Canc&elar'
        ModalResult = 2
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = ImgListBotoes16
        TabOrder = 20
        OnClick = btnCancelarClick
      end
      object cxDBLabel1: TcxDBLabel
        Left = 27
        Top = 37
        DataBinding.DataField = 'NF_NUMERO'
        DataBinding.DataSource = DS
        ParentColor = False
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
        Height = 17
        Width = 113
      end
      object cxDBLabel2: TcxDBLabel
        Left = 141
        Top = 37
        DataBinding.DataField = 'NF_CHAVE'
        DataBinding.DataSource = DS
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
        Height = 17
        Width = 375
      end
      object cxDBLabel3: TcxDBLabel
        Left = 141
        Top = 69
        DataBinding.DataField = 'NF_RAZAOSOCIAL'
        DataBinding.DataSource = DS
        ParentColor = False
        ParentFont = False
        Properties.WordWrap = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
        Height = 17
        Width = 375
      end
      object cxDBLabel4: TcxDBLabel
        Left = 27
        Top = 69
        DataBinding.DataField = 'NF_DT_EMISSAO'
        DataBinding.DataSource = DS
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
        Height = 17
        Width = 113
      end
      object edtIMPrestador: TcxTextEdit
        Left = 277
        Top = 348
        AutoSize = False
        Style.HotTrack = False
        TabOrder = 14
        Height = 21
        Width = 251
      end
      object edtNumeroFinalNFSe: TcxTextEdit
        Left = 277
        Top = 237
        AutoSize = False
        Style.HotTrack = False
        TabOrder = 9
        Height = 21
        Width = 251
      end
      object edtDataInicial: TcxDateEdit
        Left = 15
        Top = 162
        Style.HotTrack = False
        TabOrder = 5
        Width = 251
      end
      object edtDataFinal: TcxDateEdit
        Left = 277
        Top = 162
        Style.HotTrack = False
        TabOrder = 6
        Width = 251
      end
      object edtIMTomador: TcxTextEdit
        Left = 277
        Top = 423
        AutoSize = False
        Style.HotTrack = False
        TabOrder = 17
        Height = 21
        Width = 251
      end
      object edtNumLoteNFSe: TcxTextEdit
        Left = 15
        Top = 273
        AutoSize = False
        Style.HotTrack = False
        TabOrder = 10
        Height = 21
        Width = 251
      end
      object edtSerieNFSe: TcxTextEdit
        Left = 277
        Top = 273
        AutoSize = False
        Style.HotTrack = False
        TabOrder = 11
        Height = 21
        Width = 251
      end
      object cxLabel6: TcxLabel
        Left = 15
        Top = 197
        Caption = 'Informa'#231#245'es da NFSe'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clDefault
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxLabel7: TcxLabel
        Left = 15
        Top = 308
        Caption = 'Informa'#231#245'es do Prestador'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxLabel8: TcxLabel
        Left = 15
        Top = 383
        Caption = 'Informa'#231#245'es do Tomador'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxLabel9: TcxLabel
        Left = 15
        Top = 114
        ParentCustomHint = False
        Caption = 'Consulta NFSe'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clDefault
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold, fsUnderline]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxButton1: TcxButton
        Left = 224
        Top = 511
        Width = 100
        Height = 25
        Caption = 'Limpar'
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = ImgListBotoes16
        TabOrder = 18
        OnClick = cxButton1Click
      end
      object dxLayoutGroup2: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Offsets.Bottom = 5
        Offsets.Left = 5
        Offsets.Right = 5
        Offsets.Top = 5
        Hidden = True
        ItemIndex = 5
        Padding.Left = 10
        Padding.Right = 10
        Padding.AssignedValues = [lpavLeft, lpavRight]
        ShowBorder = False
        Index = -1
      end
      object dxLayoutGroup3: TdxLayoutGroup
        Parent = dxLayoutGroup2
        CaptionOptions.Text = 'Dados da Nota'
        Offsets.Bottom = 5
        Index = 0
      end
      object dxLayoutGroup4: TdxLayoutGroup
        Parent = dxLayoutGroup2
        AlignHorz = ahClient
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ButtonOptions.ShowExpandButton = True
        ItemIndex = 3
        Padding.AssignedValues = [lpavLeft]
        ShowBorder = False
        OnCollapsed = GrupoDetalhesCollapsed
        OnExpanded = GrupoDetalhesExpanded
        Index = 2
      end
      object LiedtNumInicialNFSe: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        Padding.Right = 5
        Padding.AssignedValues = [lpavRight]
        CaptionOptions.Text = 'N'#250'mero Inicial NFSe'
        CaptionOptions.Layout = clTop
        Control = edtNumeroInicialNFSe
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 300
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem10: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        AlignVert = avTop
        Visible = False
        Padding.Right = 5
        Padding.AssignedValues = [lpavRight]
        CaptionOptions.Text = 'CNPJ Prestador'
        CaptionOptions.Layout = clTop
        Control = edtCNPJPrestador
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 300
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem11: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahClient
        Visible = False
        Padding.Right = 5
        Padding.AssignedValues = [lpavLeft, lpavRight]
        CaptionOptions.Text = 'CNPJ Tomador'
        CaptionOptions.Layout = clTop
        Control = edtCNPJTomador
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 300
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup5: TdxLayoutGroup
        Parent = dxLayoutGroup2
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 5
      end
      object dxLayoutItem12: TdxLayoutItem
        Parent = dxLayoutGroup5
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton2'
        CaptionOptions.Visible = False
        Control = btnConsultarNFSe
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 101
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem13: TdxLayoutItem
        Parent = dxLayoutGroup5
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton2'
        CaptionOptions.Visible = False
        Control = cxButton2
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 101
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutGroup7: TdxLayoutGroup
        Parent = dxLayoutGroup3
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutItem18: TdxLayoutItem
        Parent = dxLayoutGroup7
        CaptionOptions.Text = 'N'#250'mero da Nota:'
        CaptionOptions.Layout = clTop
        Control = cxDBLabel1
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 113
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem19: TdxLayoutItem
        Parent = dxLayoutGroup7
        AlignHorz = ahClient
        CaptionOptions.Text = 'Chave:'
        CaptionOptions.Layout = clTop
        Control = cxDBLabel2
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 198
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutGroup8: TdxLayoutGroup
        Parent = dxLayoutGroup3
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutItem20: TdxLayoutItem
        Parent = dxLayoutGroup8
        AlignHorz = ahClient
        CaptionOptions.Text = 'Respons'#225'vel:'
        CaptionOptions.Layout = clTop
        Control = cxDBLabel3
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 238
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem21: TdxLayoutItem
        Parent = dxLayoutGroup8
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Data de Emiss'#227'o:'
        CaptionOptions.Layout = clTop
        Control = cxDBLabel4
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 113
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
        Parent = dxLayoutGroup2
        AlignHorz = ahClient
        AlignVert = avBottom
        Offsets.Bottom = 2
        Offsets.Top = 2
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
        CaptionOptions.Text = 'Separator'
        Index = 4
      end
      object dxLayoutGroup9: TdxLayoutGroup
        Parent = dxLayoutGroup2
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 3
      end
      object dxLayoutItem25: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        AlignVert = avClient
        Visible = False
        Padding.Left = 5
        Padding.AssignedValues = [lpavLeft, lpavRight]
        CaptionOptions.Text = 'Inscri'#231#227'o Municipal Prestador'
        CaptionOptions.Layout = clTop
        Control = edtIMPrestador
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 300
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object LiedtNumFinalNFSe: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avClient
        Padding.Left = 5
        Padding.AssignedValues = [lpavLeft]
        CaptionOptions.Text = 'N'#250'mero Final NFSe'
        CaptionOptions.Layout = clTop
        Control = edtNumeroFinalNFSe
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 300
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem14: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        Padding.Right = 5
        Padding.AssignedValues = [lpavRight]
        CaptionOptions.Text = 'Data Inicial'
        CaptionOptions.Layout = clTop
        Control = edtDataInicial
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 300
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avBottom
        Padding.Left = 5
        Padding.AssignedValues = [lpavLeft]
        CaptionOptions.Text = 'Data Final'
        CaptionOptions.Layout = clTop
        Control = edtDataFinal
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 300
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup4
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 0
      end
      object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup4
        LayoutDirection = ldHorizontal
        Index = 5
      end
      object dxLayoutItem9: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahClient
        AlignVert = avBottom
        Visible = False
        Padding.Left = 5
        Padding.AssignedValues = [lpavLeft]
        CaptionOptions.Text = 'Inscri'#231#227'o Municipal Tomador'
        CaptionOptions.Layout = clTop
        Control = edtIMTomador
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 300
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup4
        LayoutDirection = ldHorizontal
        Index = 7
      end
      object dxLayoutItem15: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahClient
        Padding.Right = 5
        Padding.AssignedValues = [lpavRight]
        CaptionOptions.Text = 'N'#250'mero Lote'
        CaptionOptions.Layout = clTop
        Control = edtNumLoteNFSe
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 300
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem16: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahClient
        AlignVert = avClient
        Visible = False
        Padding.Left = 5
        Padding.AssignedValues = [lpavLeft]
        CaptionOptions.Text = 'S'#233'rie NFSe'
        CaptionOptions.Layout = clTop
        Control = edtSerieNFSe
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 300
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem17: TdxLayoutItem
        Parent = dxLayoutGroup4
        Padding.Bottom = 5
        Padding.Top = 13
        Padding.AssignedValues = [lpavBottom, lpavTop]
        CaptionOptions.Text = 'cxLabel6'
        CaptionOptions.Visible = False
        Control = cxLabel6
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 164
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem22: TdxLayoutItem
        Parent = dxLayoutGroup4
        Visible = False
        Padding.Bottom = 5
        Padding.Top = 13
        Padding.AssignedValues = [lpavBottom, lpavTop]
        CaptionOptions.Visible = False
        Control = cxLabel7
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 164
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutItem23: TdxLayoutItem
        Parent = dxLayoutGroup4
        Visible = False
        Padding.Bottom = 5
        Padding.Top = 13
        Padding.AssignedValues = [lpavBottom, lpavTop]
        CaptionOptions.Visible = False
        Control = cxLabel8
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 164
        ControlOptions.ShowBorder = False
        Index = 6
      end
      object dxLayoutItem24: TdxLayoutItem
        Parent = dxLayoutGroup2
        Padding.Bottom = 10
        Padding.Top = 10
        Padding.AssignedValues = [lpavBottom, lpavTop]
        CaptionOptions.Visible = False
        Control = cxLabel9
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 164
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup4
        LayoutDirection = ldHorizontal
        Index = 2
      end
      object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup4
        LayoutDirection = ldHorizontal
        Index = 3
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutGroup5
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = cxButton1
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 100
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  object DS: TDataSource
    DataSet = NotaFiscalXML
    OnDataChange = DSDataChange
    Left = 338
    Top = 235
  end
  object OpenFolderDialog1: TOpenFolderDialog
    Title = 'Selecione um diret'#243'rio:'
    MayCreateNewFolder = False
    Left = 366
    Top = 263
  end
  object Transa: TIBTransaction
    DefaultDatabase = FrmPrincipal.CONECTAR
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 310
    Top = 291
  end
  object NotaFiscalXML: TIBDataSet
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    FieldOptions.AutoCreateMode = acCombineAlways
    AfterInsert = NotaFiscalXMLAfterInsert
    AfterOpen = NotaFiscalXMLAfterOpen
    AfterScroll = NotaFiscalXMLAfterScroll
    BeforeClose = NotaFiscalXMLBeforeClose
    BeforeOpen = NotaFiscalXMLBeforeOpen
    OnCalcFields = NotaFiscalXMLCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NOTA_FISCAL'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into NOTA_FISCAL'
      
        '  (CODIGO, CODEMPRESA, CODVENDA, NF_DT_EMISSAO, NF_NATUREZA_OPER' +
        'ACAO, NF_NUMERO, '
      
        '   NF_CHAVE, NF_PROTOCOLO, NF_AMBIENTE, ARQUIVO_XML, NF_PROTOCOL' +
        'O_CANCELAMENTO, '
      
        '   NF_DT_CANCELAMENTO, NF_CSTAT, MOTIVO_CANCELAMENTO, NF_PROTOCO' +
        'LO_CARTA_CORRECAO, '
      
        '   NF_MOTIVO_STATUS, TIPO, NF_RAZAOSOCIAL, NF_TIPO, NF_SITUACAO,' +
        ' NF_SEQUENCIA_EVENTO, '
      
        '   NF_CNPJCPF_DESTINO, NF_DIGEST_VALUE, STATUS, NF_PROTOCOLO_INU' +
        'TILIZACAO, '
      
        '   NF_DT_INUTILIZACAO, NF_NUM_INICIAL_INUTILIZACAO, NF_NUM_FINAL' +
        '_INUTILIZACAO, '
      '   MOTIVO_INUTILIZACAO, SERIE, ARQUIVO_RPS, NF_MODELO, NF_CNPJ)'
      'values'
      
        '  (:CODIGO, :CODEMPRESA, :CODVENDA, :NF_DT_EMISSAO, :NF_NATUREZA' +
        '_OPERACAO, '
      
        '   :NF_NUMERO, :NF_CHAVE, :NF_PROTOCOLO, :NF_AMBIENTE, :ARQUIVO_' +
        'XML, :NF_PROTOCOLO_CANCELAMENTO, '
      
        '   :NF_DT_CANCELAMENTO, :NF_CSTAT, :MOTIVO_CANCELAMENTO, :NF_PRO' +
        'TOCOLO_CARTA_CORRECAO, '
      
        '   :NF_MOTIVO_STATUS, :TIPO, :NF_RAZAOSOCIAL, :NF_TIPO, :NF_SITU' +
        'ACAO, :NF_SEQUENCIA_EVENTO, '
      
        '   :NF_CNPJCPF_DESTINO, :NF_DIGEST_VALUE, :STATUS, :NF_PROTOCOLO' +
        '_INUTILIZACAO, '
      
        '   :NF_DT_INUTILIZACAO, :NF_NUM_INICIAL_INUTILIZACAO, :NF_NUM_FI' +
        'NAL_INUTILIZACAO, '
      
        '   :MOTIVO_INUTILIZACAO, :SERIE, :ARQUIVO_RPS, :NF_MODELO, :NF_C' +
        'NPJ)')
    RefreshSQL.Strings = (
      'Select *'
      'from NOTA_FISCAL '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select NF.*'
      'from NOTA_FISCAL NF')
    ModifySQL.Strings = (
      'update NOTA_FISCAL'
      'set'
      '  CODIGO = :CODIGO,'
      '  CODEMPRESA = :CODEMPRESA,'
      '  CODVENDA = :CODVENDA,'
      '  NF_DT_EMISSAO = :NF_DT_EMISSAO,'
      '  NF_NATUREZA_OPERACAO = :NF_NATUREZA_OPERACAO,'
      '  NF_NUMERO = :NF_NUMERO,'
      '  NF_CHAVE = :NF_CHAVE,'
      '  NF_PROTOCOLO = :NF_PROTOCOLO,'
      '  NF_AMBIENTE = :NF_AMBIENTE,'
      '  ARQUIVO_XML = :ARQUIVO_XML,'
      '  NF_PROTOCOLO_CANCELAMENTO = :NF_PROTOCOLO_CANCELAMENTO,'
      '  NF_DT_CANCELAMENTO = :NF_DT_CANCELAMENTO,'
      '  NF_CSTAT = :NF_CSTAT,'
      '  MOTIVO_CANCELAMENTO = :MOTIVO_CANCELAMENTO,'
      '  NF_PROTOCOLO_CARTA_CORRECAO = :NF_PROTOCOLO_CARTA_CORRECAO,'
      '  NF_MOTIVO_STATUS = :NF_MOTIVO_STATUS,'
      '  TIPO = :TIPO,'
      '  NF_RAZAOSOCIAL = :NF_RAZAOSOCIAL,'
      '  NF_TIPO = :NF_TIPO,'
      '  NF_SITUACAO = :NF_SITUACAO,'
      '  NF_SEQUENCIA_EVENTO = :NF_SEQUENCIA_EVENTO,'
      '  NF_CNPJCPF_DESTINO = :NF_CNPJCPF_DESTINO,'
      '  NF_DIGEST_VALUE = :NF_DIGEST_VALUE,'
      '  STATUS = :STATUS,'
      '  NF_PROTOCOLO_INUTILIZACAO = :NF_PROTOCOLO_INUTILIZACAO,'
      '  NF_DT_INUTILIZACAO = :NF_DT_INUTILIZACAO,'
      '  NF_NUM_INICIAL_INUTILIZACAO = :NF_NUM_INICIAL_INUTILIZACAO,'
      '  NF_NUM_FINAL_INUTILIZACAO = :NF_NUM_FINAL_INUTILIZACAO,'
      '  MOTIVO_INUTILIZACAO = :MOTIVO_INUTILIZACAO,'
      '  SERIE = :SERIE,'
      '  ARQUIVO_RPS = :ARQUIVO_RPS,'
      '  NF_MODELO = :NF_MODELO,'
      '  NF_CNPJ = :NF_CNPJ'
      'where'
      '  CODIGO = :OLD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 310
    Top = 235
    object NotaFiscalXMLAMBIENTE: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ambiente'
      Calculated = True
    end
  end
  object MainMenu1: TMainMenu
    Left = 338
    Top = 291
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      OnClick = Arquivo1Click
      object ForarBusca1: TMenuItem
        Caption = 'For'#231'ar Busca de XML'
      end
      object ImportarXML1: TMenuItem
        Caption = 'Importar XML'
        OnClick = ImportarXML1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Configuraes1: TMenuItem
        Caption = 'Configura'#231#245'es NFe'
        OnClick = Configuraes1Click
      end
      object ConfiguraesNFSe1: TMenuItem
        Caption = 'Configura'#231#245'es NFSe'
        OnClick = ConfiguraesNFSe1Click
      end
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        OnClick = Fechar1Click
      end
    end
    object NotaFiscal1: TMenuItem
      Caption = 'Nota Fiscal'
      OnClick = NotaFiscal1Click
      object Visualizar1: TMenuItem
        Caption = 'Visualizar'
        OnClick = Visualizar1Click
      end
      object GerarPDF1: TMenuItem
        Caption = 'Salvar em PDF'
        OnClick = GerarPDF1Click
      end
      object ExportarXML1: TMenuItem
        Caption = 'Exportar XML'
        OnClick = ExportarXML1Click
      end
      object EnviarEmail4: TMenuItem
        Caption = 'Enviar por Email'
        OnClick = EnviarEmail4Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object VizualizarXML1: TMenuItem
        Caption = 'Visualizar XML'
        OnClick = VizualizarXML1Click
      end
      object ValidarXML1: TMenuItem
        Caption = 'Validar XML'
        OnClick = ValidarXML1Click
      end
      object RecuperarXMLpelachave1: TMenuItem
        Caption = 'Recuperar XML pela Chave'
        OnClick = RecuperarXMLpelachave1Click
      end
      object SalvarXMLdeRetorno1: TMenuItem
        Caption = 'Salvar XML de Retorno'
        OnClick = SalvarXMLdeRetorno1Click
      end
      object C1: TMenuItem
        Caption = 'Consultar Nota na SEFAZ'
        OnClick = ConsutarNotaNaSefaz1Click
      end
      object ConsultarcarregandoXML1: TMenuItem
        Caption = 'Consultar carregando XML'
        OnClick = ConsultarcarregandoXML1Click
      end
      object ConsultartodasasNFSe1: TMenuItem
        Caption = 'Consultar todas as NFSe'
        OnClick = ConsultartodasasNFSe1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Evento1: TMenuItem
        Caption = 'Evento'
        object Visualizar_Evento1: TMenuItem
          Caption = 'Visualizar Evento'
          OnClick = Visualizar_Evento1Click
        end
        object VisualizarXML_Evento1: TMenuItem
          Caption = 'VisualizarXML Evento'
          OnClick = VisualizarXML_Evento1Click
        end
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Inutilizacao1: TMenuItem
        Caption = 'Inutiliza'#231#227'o'
        object Inutilizarnumerao1: TMenuItem
          Caption = 'Inutilizar Numera'#231#227'o'
          OnClick = Inutilizarnumerao1Click
        end
        object VisualizarInutilizadas1: TMenuItem
          Caption = 'Visualizar Inutilizadas'
          OnClick = VisualizarInutilizadas1Click
        end
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object StatusServio1: TMenuItem
        Caption = 'Status do Servi'#231'o'
        OnClick = StatusServio1Click
      end
      object CancelamentodaNFE1: TMenuItem
        Caption = 'Cancelar Nota'
        OnClick = CancelamentodaNFE1Click
      end
      object CartadeCorreo1: TMenuItem
        Caption = 'Carta de Corre'#231#227'o'
        OnClick = CartadeCorreo1Click
      end
      object Outros1: TMenuItem
        Caption = 'Outros'
        object ConsultarReciboLote1: TMenuItem
          Caption = 'Consultar Recibo Lote'
          Visible = False
          OnClick = ConsultarReciboLote1Click
        end
        object ConsultaCadastro1: TMenuItem
          Caption = 'Consulta Cadastro'
          OnClick = ConsultaCadastro1Click
        end
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object ConsultarLote1: TMenuItem
        Caption = 'Consultar Lote'
      end
      object LinkNFSe1: TMenuItem
        Caption = 'Link NFSe'
      end
    end
    object MenuImpressoes: TMenuItem
      Caption = 'Impress'#245'es'
    end
    object MenuPesquisar: TMenuItem
      Caption = 'Pesquisar'
      OnClick = MenuPesquisarClick
    end
  end
  object ImgListMenuConfig: TImageList
    ColorDepth = cd32Bit
    Left = 310
    Top = 319
    Bitmap = {
      494C010102000500040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000414141966E6E6EFF6E6E6EFF6E6E
      6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E
      6EFF6E6E6EFF6E6E6EFF41414196000000000000000000000000000000000000
      00000202022B0F0F0F460000001A474747B75F5F5FD4202020610202021D0F0F
      0F4D000000090000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FFFBFBFBFFFBFBFBFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
      FBFFFBFBFBFFFBFBFBFF707070FF000000000000000000000000000000001616
      1642676767E5777777F6252525907E7E7EF4A1A1A1FF434343B4444444B58484
      84FE3C3C3CA00000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000737373FFFBFBFBFFA9A9A9FFA9A9
      A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9
      A9FFA9A9A9FFFBFBFBFF737373FF000000000000000000000001000000161B1B
      1B53949494FE9E9E9EFF8B8B8CFF979797FD9FA0A0FF8C8C8CFC959595FFA3A3
      A3FF585858BB0000001A00000010000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000767676FFFBFBFBFFE5E5E5FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE5E5E5FFFBFBFBFF767676FF00000000000000000F0F0F3F656565D84545
      45B8848484EAAFAFAFFFB7B7B6FFBEBDBDFFBFBEBEFFBDBDBCFFB2B1B1FFA7A7
      A7FF4F4F4FC35F5F5FD14242429F000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A7A7AFFFBFBFBFFA9A9A9FFA9A9
      A9FFA9A9A9FFE6E6E6FFCC7C4EFFCC7C4EFFCC7C4EFFCC7C4EFFCC7C4EFFCC7C
      4EFFCC7C4EFFCC7C4EFFCC7C4EFF00000000000000005A5A5AA7B8B8B8FFB0B0
      B0FFB4B4B4FFC6C5C4FFD9D9D7FFE7E7E7FFE8E7E7FFE2E2E1FFCFCECEFFBDBD
      BCFFB1B2B2FFB7B7B7FF9D9D9DFF131313360000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E7E7EFFFCFCFCFFA9A9A9FFA9A9
      A9FFA9A9A9FFE8E8E8FFCC7C4EFFEDCCAFFFEDCCAFFFEDCCAFFFEDCCAFFFEDCC
      AFFFEDCCAFFFEDCCAFFFCC7C4EFF000000000000000027272749939393DFC2C2
      C2FFCDCCCCFFD6D5D5FFC6C6C6F1787878946262627B9EA0A0C5D7D8D8FFD1D1
      D0FFC9C9C9FFB2B2B2FB565656A10202020D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000838383FFFCFCFCFFA9A9A9FFA9A9
      A9FFA9A9A9FFEBEBEBFFCC7C4EFFEDCCAFFFEDCCAFFFEDCCAFFFEDCCAFFFEDCC
      AFFFEDCCAFFFEDCCAFFFCC7C4EFF000000000B0B0B334949499D858585DCD3D3
      D2FFD0D0CFFFC5C6C6FB3C3C3C5C0000000000000000020202098F8F8FC1D0D0
      D0FFD7D7D6FFB4B4B4F95A5A5AB92D2D2D6C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000878787FFFCFCFCFFA9A9A9FFA9A9
      A9FFA9A9A9FFEDEDEDFFCC7C4EFFEDCCAFFFEDCCAFFFEDCCAFFFEDCCAFFFEDCC
      AFFFEDCCAFFFEDCCAFFFCC7C4EFF000000002D2D2D67E6E6E6FFDCDCDCFFDBDA
      DAFFCBCACAFF939393DB0000000D0000000000000000000000003D3D3D6DC1C1
      C1FFD2D1D1FFDBDBDBFFEBEBEBFF979797D00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008B8B8BFFFDFDFDFFA9A9A9FFA9A9
      A9FFA9A9A9FFEFEFEFFFCC7C4EFFEDCCAFFFEDCCAFFFEDCCAFFFEDCCAFFFEDCC
      AFFFEDCCAFFFEDCCAFFFCC7C4EFF0000000024242443CACACADADEDEDEF1F8F8
      F9FFC5C5C5FF878787E00000001800000000000000000000000038383879B3B3
      B3FFE0DFDFFFF3F3F3FDD4D4D4E48080809B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008F8F8FFFFDFDFDFFA9A9A9FFA9A9
      A9FFA9A9A9FFF1F1F1FFCC7C4EFFEDCCAFFFEDCCAFFFEDCCAFFFEDCCAFFFEDCC
      AFFFEDCCAFFFEDCCAFFFCC7C4EFF00000000000000000E0E0E3B828282CFFFFF
      FFFFCBCBCBFF9F9F9FFD3131318100000008000000000202022D737373D5B1B1
      B1FFF1F0F0FFD7D7D7F9323232840303030F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000939393FFFDFDFDFFA9A9A9FFA9A9
      A9FFA9A9A9FFF4F4F4FFCC7C4EFFEDCCAFFFEDCCAFFFEDCCAFFFEDCCAFFFEDCC
      AFFFEDCCAFFFEDCCAFFFCC7C4EFF00000000000000006262629FEDEDEDFFFAFA
      FAFFE9E9E9FFAEAEAEFF8D8D8DFC525252BE404040A76E6E6EE19E9E9EFFC9C9
      C9FFFAFAF9FFF8F8F8FFBBBBBBF4141414330000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000969696FFFEFEFEFFA9A9A9FFA9A9
      A9FFA9A9A9FFF6F6F6FFCC7C4EFFCC7C4EFFCC7C4EFFCC7C4EFFCC7C4EFFCC7C
      4EFFCC7C4EFFCC7C4EFFCC7C4EFF000000000000000049494961E8E8E8FFB7B7
      B7E5CACACAF1E0E0E0FFB7B7B7FFA8A8A8FFA4A4A4FFAEAEAEFFC9C9C8FFE4E4
      E4FFB3B3B3E0E1E1E1FDADADADCF090909100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000999999FFFEFEFEFFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFFEFEFEFF999999FF000000000000000000000005313131471B1B
      1B55AEAEAEECE8E8E8FFE6E6E6FFD7D7D7FFD3D3D3FFDFDFDFFFE6E6E6FFE0E0
      E0FF545454A2292929401F1F1F2C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9CFFFEFEFEFFA9A9A9FFA9A9
      A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9
      A9FFA9A9A9FFFEFEFEFF9C9C9CFF000000000000000000000000000000002D2D
      2D51D7D7D7FFD9D9D9FF7F7F7FB9C1C1C1F2DEDEDEFF909090C9A1A1A1DAEDED
      EDFF8A8A8AC50000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F9F9FFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFF9F9F9FFF000000000000000000000000000000000505
      05074343435D666666880E0E0E27AFAFAFE9E2E2E2FF5353537D252525416C6C
      6C8F171717220000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005F5F5F96A1A1A1FFA1A1A1FFA1A1
      A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1
      A1FFA1A1A1FFA1A1A1FF5F5F5F96000000000000000000000000000000000000
      0000000000000000000000000000202020352C2C2C420F0F0F19000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF000000F007000000000000E00300000000
      0000800100000000000080000000000000008000000000000000800000000000
      0000018000000000000001C000000000000001C0000000000000808000000000
      0000800000000000000080000000000000008001000000000000E00700000000
      0000E007000000000000FE3F0000000000000000000000000000000000000000
      000000000000}
  end
  object ImgListBotoes16: TImageList
    ColorDepth = cd32Bit
    Left = 338
    Top = 319
    Bitmap = {
      494C01010E001100040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000001900000019000000190000
      0019000000190000001900000019000000190000001900000019000000190000
      001900000019000000190000001900000019C0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BB6E24FFBB6E24FFBB6E
      24FFBB6E24FFBB6E24FF00000000000000000000000000000000BB6E24FFBB6E
      24FFBB6E24FFBB6E24FFBB6E24FF000000000000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BB6E24FFF9B65AFFF1AD
      54FFBB6E24FF000000000000000000000000000000000000000000000000BB6E
      24FFF1AE54FFF9B65AFFBB6E24FF000000000000FFFFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FF0000FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BB6E24FFF1AE54FFE7A3
      4CFFDE9944FFBB6E24FF00000000000000000000000000000000BB6E24FFDF99
      44FFE7A34CFFF1AD54FFBB6E24FF000000000000FFFFC0C0C0FFC0C0C0FF8080
      80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FF0000FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BB6E24FFBB6E24FFDF99
      44FFD6903DFFCF8737FFBB6E24FF0000000000000000BB6E24FFCF8736FFD690
      3DFFDE9944FFBB6E24FFBB6E24FF000000000000FFFFC0C0C0FFC0C0C0FF8080
      80FF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC0C0C0FFFFFFFFFFC0C0C0FF0000FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BB6E24FF00000000BB6E
      24FFCF8736FFC88030FFBB6E24FF0000000000000000BB6E24FFC88030FFCF87
      37FFBB6E24FF00000000BB6E24FF000000000000FFFFC0C0C0FFFFFFFFFFC0C0
      C0FF0000FFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF8080
      80FFC0C0C0FF808080FFC0C0C0FF0000FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BB6E24FFBB6E24FF00000000000000000000000000000000BB6E24FFBB6E
      24FF000000000000000000000000000000000000FFFFC0C0C0FFFFFFFFFFFFFF
      FFFFFFFFFFFFC0C0C0FF0000FFFF808080FFC0C0C0FFC0C0C0FF0000FFFFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FF0000FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFFFC0C0C0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFC0C0C0FF808080FFC0C0C0FFC0C0
      C0FFFFFFFFFFFFFFFFFFC0C0C0FF0000FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFFFC0C0C0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FF0000FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BB6E24FFBB6E24FF00000000000000000000000000000000BB6E24FFBB6E
      24FF000000000000000000000000000000000000FFFFC0C0C0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FF0000FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BB6E24FF00000000BB6E
      24FFCF8737FFC88030FFBB6E24FF0000000000000000BB6E24FFC88030FFCF87
      36FFBB6E24FF00000000BB6E24FF000000000000FFFFC0C0C0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FF0000FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BB6E24FFBB6E24FFDE99
      44FFD6903DFFCF8736FFBB6E24FF0000000000000000BB6E24FFCF8737FFD690
      3DFFDF9944FFBB6E24FFBB6E24FF000000000000FFFFC0C0C0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FF0000FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BB6E24FFF1AD54FFE7A3
      4CFFDF9944FFBB6E24FF00000000000000000000000000000000BB6E24FFDE99
      44FFE7A34CFFF1AE54FFBB6E24FF000000000000FFFFC0C0C0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FF808080FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FF0000FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BB6E24FFF9B65AFFF1AE
      54FFBB6E24FF000000000000000000000000000000000000000000000000BB6E
      24FFF1AD54FFF9B65AFFBB6E24FF000000000000FFFFC0C0C0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FF0000FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BB6E24FFBB6E24FFBB6E
      24FFBB6E24FFBB6E24FF00000000000000000000000000000000BB6E24FFBB6E
      24FFBB6E24FFBB6E24FFBB6E24FF000000000000FFFF808080FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FF808080FF0000FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000F0F0F106C6C6E708C8CA2AF8888AABF8888AABF8C8CA1AF6C6C6E700F0F
      0F10000000000000000000000000000000000000000000000000000000000000
      00001D1D1D1E74747E8757579DDB0D0D8FFF0D0D8FFF53539DDE7676818D2323
      2324000000000000000000000000000000000101002E12120287121202871212
      0287121202871212028712120287121202871212028712120287121202871212
      02870808015E000000290000001B0000000F0101002E12120287121202871212
      0287121202871212028712120287121202871212028712120287121202871212
      02870808015E000000290000001B0000000F0000000000000000000000006C6C
      6E704444B1EF0A0AACFF0A0AB6FF0D0DBFFF1313C6FF1818C7FF1919C0FF4A4A
      B4EF6C6C6E700000000000000000000000000000000000000000000000007474
      808A0E1196FF0D1CAAFF0D24B9FF0D28C0FF0D28C0FF0D25BAFF0D1CABFF0E12
      97FF7676828D0000000000000000000000000303002B29291890DEDEDBEFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFF
      FEFF7C7C71C1080800530000000E000000080303002B29291890DEDEDBEFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFF
      FEFF7C7C71C1080800530000000E0000000800000000000000008989969F1111
      ACFF0202B2FF1212C1FF4B4BD2FF5A5AD3FF6161D6FF5E5EDFFF3A3AE0FF2828
      E2FF1F1FBDFF8989969F00000000000000000000000000000000787988960D19
      A4FF102CC1FF102DC3FF102DC3FF102DC3FF102DC3FF102DC3FF102DC3FF102C
      C1FF0E1AA6FF787988960000000000000000000000000606002B474734ABCDCD
      BCFFD0D0C1FFD5D5C7FFDADACEFFE0E0D5FFE6E6DDFFECECE5FFF1F1ECFFF6F6
      F2FFFCFCF9FF111100790000000000000000000000000606002B474734ABCDCD
      BCFFD0D0C1FFD5D5C7FFDADACEFFE0E0D5FFE6E6DDFFECECE5FFF1F1ECFFF6F6
      F2FFFCFCF9FF111100790000000000000000000000006C6C6E703535BFFF0D0D
      B8FF1D1DBFFF4646C3FF8B8B979F4F4F4F504F4F4F508B8B979F6262D8FF3B3B
      ECFF3636F2FF1F1FBDFF6C6C6E7000000000000000007474808A101CA7FF1332
      C6FF1332C6FF1332C6FF1332C6FF1332C6FF1332C6FF1332C6FF1332C6FF1332
      C6FF1332C6FF101DA9FF777784900000000000000000000000000F0F0071F1F1
      EAFFEFEFE8FFF0F0EAFFF1F1EBFFF3F3EDFFF4F4EFFFF5F5F1FFF7F7F2FFF8F8
      F4FFFCFCF8FF0F0F0071000000000000000000000000000000000F0F0071F1F1
      EAFFEFEFE8FFF0F0EAFFF1F1EBFFF3F3EDFFF4F4EFFFF5F5F1FFF7F7F2FFF8F8
      F4FFFCFCF8FF0F0F007100000000000000000F0F0F104F4FB9EF2B2BC2FF0404
      B4FF7F7FB2CF2F2F2F300000000000000000000000005E5E5F602525DEFF2C2C
      E6FF4646EDFF2929E3FF4A4AB3EF0F0F0F101A1A1A1B1318A0FF1636C8FF1638
      CAFF5B73DAFFFFFFFFFF5B73DAFF1638CAFF1638CAFF5B73DAFFFFFFFFFF5B73
      DAFF1638CAFF1637C9FF12189FFF2929292A00000000000000000F0F006BFBFB
      F5FFF6F6F1FFF6F6F1FFF6F6F1FFF6F6F1FFF6F6F1FFF6F6F1FFF6F6F1FFA7A7
      99FF8B8B79FF11110073000000000000000000000000000000000F0F006BFBFB
      F5FFF6F6F1FFF6F6F1FFF6F6F1FFF6F6F1FFF6F6F1FFF6F6F1FFF6F6F1FFF6F6
      F1FFFBFBF5FF0F0F006B00000000000000005E5E5F604444C6FF0707B5FF0F0F
      B0FF2F2F2F300000000000000000000000005E5E5F601A1AD2FF1F1FD8FF2525
      DEFF6B6BDCFF3D3DE1FF1919BDFF5E5E5F6072727C841E31B8FF1A3FCEFF1A3F
      CEFFFFFFFFFFFFFFFFFFFFFFFFFF5E78DDFF5E78DDFFFFFFFFFFFFFFFFFFFFFF
      FFFF1A3FCEFF1A3FCEFF1D32BBFF78788893000000000000000012120067FAFA
      F2FFF3F3ECFFF3F3ECFFF3F3ECFFF3F3ECFFF3F3ECFFF3F3ECFFF3F3ECFF9191
      80FFFFFFFFFF191907860B0B033C00000000000000000000000012120067FAFA
      F2FFA6A697FF8F8F7EFFCFCFC4FFF3F3ECFFF3F3ECFFF3F3ECFFF3F3ECFFF3F3
      ECFFFAFAF2FF1212006700000000000000008888969F5B5BCFFF0C0CB5FF8989
      969F0000000000000000000000005E5E5F601010C8FF1515CDFF1A1AD2FF5E5E
      5F608B8B979F6262E0FF1818C5FF8989969F6568A5CF1E3EC9FF1E45D2FF1E45
      D2FF4044B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4044
      B7FF1E45D2FF1E45D2FF1E3FCCFF5659A6DB000000000000000013130166F8F8
      EEFFF0F0E6FFF0F0E6FFF0F0E6FFE5E5DAFFD2D2C5FFBABAABFFA4A494FF9898
      87FFE6E6E2FFFFFFFFFF1C1C0C820C0C053B000000000000000013130166F8F8
      EEFF919180FFFFFFFEFFA9A999FFDBDBCFFFF0F0E6FFF0F0E6FFF0F0E6FFF0F0
      E6FFF8F8EEFF1313016600000000000000008787ABBF6969D5FF3232BFFF7A7A
      7E8000000000000000005D5D5F600909BFFF0C0CC3FF1010C8FF5E5E5F600000
      00006C6C6E707777DEFF1212C4FF8888AABF2B2EA7F3254CD4FF234DD6FF234D
      D6FF234DD6FF4044B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4044B7FF234D
      D6FF234DD6FF234DD6FF254ED5FF1D22A5F9000000000000000017170566F6F6
      EBFFEDEDE1FFEDEDE1FFEDEDE1FFF0F0E5FFF3F3ECFFF8F8F4FFFDFDFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF20200F7E151508621C1C0C821C1C0C829898
      87FF989887FFE6E6E1FFFBFBF8FFC4C4B6FFE3E3D7FFEDEDE1FFEDEDE1FFEDED
      E1FFF6F6EBFF1717056600000000000000008787ABBF6C6CD6FF3B3BC2FF7A7A
      7E80000000005D5D5F600303B9FF0606BCFF0909BFFF5E5E5F60000000000000
      00006C6C6E706A6AD9FF0D0DBDFF8888AABF1C22A8F93A62DDFF2754DBFF2754
      DBFF2754DBFF678AE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF678AE6FF2754
      DBFF2754DBFF2754DBFF3760DDFF1C22A8F9000000000000000019190966F5F5
      E7FFEAEADCFFEAEADCFFEAEADCFFE2E2D3FFD4D4C5FFC1C1B1FFB1B1A0FFA8A8
      97FFE9E9E5FFFFFFFFFF242413791010093720200F7EFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFAFAF7FFF5F5EEFFEFEFE4FFEAEADCFFEAEADCFFEAEA
      DCFFF5F5E7FF1919096600000000000000008888969F6464D2FF3F3FC6FF8989
      969F5E5E5F602A2AC2FF1E1EC0FF0E0EBCFF5D5D5F6000000000000000000000
      00008B8B979F4B4BD1FF0B0BB4FF8989969F6468A9CF4E6CDCFF2B5ADFFF2B5A
      DFFF6A8FE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A8F
      E9FF2B5ADFFF2B5ADFFF506FDDFF5E61ABD500000000000000001D1D0D66F4F4
      E4FFE8E8D8FFE8E8D8FFE8E8D8FFE8E8D8FFE8E8D8FFE8E8D8FFE8E8D8FFB0B0
      9FFFFFFFFFFF2828177512120A35000000001B1B0E5B2424137924241379A8A8
      97FFA8A897FFE8E8E4FFFAFAF6FFCACAB9FFE0E0D1FFE8E8D8FFE8E8D8FFE8E8
      D8FFF4F4E4FF1D1D0D6600000000000000005E5E5F605757CEFF4949C9FF2D2D
      BEFF3333C4FF3434C4FF2D2DC3FF5E5E5F600000000000000000000000002F2F
      2F305959C9FF3030C9FF1818B0FF5E5E5F6072727D844E60D0FF3666E4FF2F61
      E3FFFFFFFFFFFFFFFFFFFFFFFFFF4044B7FF4044B7FFFFFFFFFFFFFFFFFFFFFF
      FFFF2F61E3FF3465E4FF4C5ED0FF72727D84000000000000000021211166F3F3
      E3FFE6E6D6FFE6E6D6FFE6E6D6FFE6E6D6FFE6E6D6FFE6E6D6FFE6E6D6FFC4C4
      B3FFB9B9A8FF242412690000000000000000000000000000000021211166F3F3
      E3FFB0B09FFFFEFEFEFFBEBEADFFD9D9C9FFE6E6D6FFE6E6D6FFE6E6D6FFE6E6
      D6FFF3F3E3FF2121116600000000000000000F0F0F105050BAEF6B6BD5FF3F3F
      C7FF3B3BC6FF3333C4FF5E5E5F600000000000000000000000002F2F2F305E5E
      BCEF4242CAFF2222BCFF4646B2EF0F0F0F101A1A1A1B131DB5FF7095EBFF3468
      E7FF4044B7FFFFFFFFFF4044B7FF3267E7FF3267E7FF4044B7FFFFFFFFFF4044
      B7FF3267E7FF6F96ECFF1823B7FF1A1A1A1B000000000000000025251566F2F2
      E1FFE5E5D4FFE5E5D4FFE5E5D4FFE5E5D4FFE5E5D4FFE5E5D4FFE5E5D4FFE5E5
      D4FFF2F2E1FF252515660000000000000000000000000000000025251566F2F2
      E1FFC4C4B3FFBBBBAAFFD5D5C4FFE5E5D4FFE5E5D4FFE5E5D4FFE5E5D4FFE5E5
      D4FFF2F2E1FF252515660000000000000000000000006C6C6E704242C5FF6565
      D3FF3F3FC7FF3232BFFF8989969F6C6C6E706C6C6E708989969F2828B8FF3232
      C3FF3434C4FF1A1AB0FF6C6C6E70000000000000000072727E843544C7FF7BA2
      F1FF3B70EBFF1116A5FF356CEAFF356CEAFF356CEAFF356CEAFF1116A5FF3A6F
      EAFF78A0F1FF3A49CAFF7475828A00000000000000000000000029291966F4F4
      E5FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8
      D9FFF4F4E5FF292919660000000000000000000000000000000029291966F4F4
      E5FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8
      D9FFF4F4E5FF29291966000000000000000000000000000000008888969F4242
      C5FF7373D9FF4A4AC9FF3F3FC6FF3838C1FF3636C0FF3939C4FF3838C5FF5A5A
      D2FF3636BFFF8989969F0000000000000000000000000000000077798A933141
      C7FF8FACF1FF6C9AF2FF578BF0FF4379EEFF4379EEFF568AF0FF6A98F2FF8FAD
      F2FF3849CAFF78798C96000000000000000000000000000000002D2D1B66FCFC
      F3FFF3F3EBFFF3F3EBFFF3F3EBFFF3F3EBFFF3F3EBFFF3F3EBFFF3F3EBFFF3F3
      EBFFFAFAF1FF6D6D5CA00F0F09240000000000000000000000002D2D1B66FCFC
      F3FFF3F3EBFFF3F3EBFFF3F3EBFFF3F3EBFFF3F3EBFFF3F3EBFFF3F3EBFFF3F3
      EBFFFAFAF1FF6D6D5CA00F0F0924000000000000000000000000000000006C6C
      6E705050BAEF5F5FD2FF6E6ED6FF6E6ED7FF6B6BD7FF6565D4FF5B5BCFFF5151
      BAEF6C6C6E700000000000000000000000000000000000000000000000007374
      8087121FBCFF4D61D5FF6C88E3FF8EA9EFFF8FABF0FF6E8AE3FF5165D7FF1421
      BCFF7475838A00000000000000000000000000000000000000001A1A10398D8D
      83B3FEFEFDFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFD
      FCFFFDFDFCFFE3E3E0EC4545347A0E0E081F00000000000000001A1A10398D8D
      83B3FEFEFDFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFD
      FCFFFDFDFCFFE3E3E0EC4545347A0E0E081F0000000000000000000000000000
      00000F0F0F106C6C6E708B8BA2AF8787ABBF8787ABBF8B8BA2AF6C6C6E700F0F
      0F10000000000000000000000000000000000000000000000000000000000000
      0000111111126B6C7478787B9EAE4C52B5E1464DB6E4787A9FB16F6F797E1414
      1415000000000000000000000000000000000000000000000000000000001B1B
      1239313121663131216631312166313121663131216631312166313121663131
      21663131216631312166313121660D0D071A0000000000000000000000001B1B
      1239313121663131216631312166313121663131216631312166313121663131
      21663131216631312166313121660D0D071A00000000000000000909090A3939
      393A7A7A7A81989898B1A5A5A5D49E9E9EEBA1A1A1E8A5A5A5D2989898B17979
      797F373737380707070800000000000000000000000001010102070707080D0D
      0D0E101010111212121314141415151515161616161715151516141414151010
      10111212121343434344484848491010101100000000020202030909090A1010
      10111919191A20202021212121221D1D1D1E141414150C0C0C0D050505060000
      0001000000000000000000000000000000000000000000000000000000000000
      00000A0A0A0B4545464B67697187717182A17171819F64646A7D3B3B3C3F0202
      0203000000000000000000000000000000000000000000000000636363659494
      94E3ADADADFFBDBDBDFFBBBBBBFFBABABAFFBBBBBBFFB4B4B4FFAEAEAEFFA7A7
      A7FF8C8C8CE0454545460000000000000000010101024C4C4C4D9C9D9DB29E9F
      9EB89F9F9FBB9FA0A0BD9FA1A1BF9FA1A1C0A0A1A0C19FA1A1C09FA1A1BF9F9F
      9FBB959594BD767874EE70716FF3484848490000000104040405101010111B1B
      1B1C2929292A32323233353535362F2F2F3022222223161616170909090A0101
      0102000000000000000000000000000000000000000000000000000000004D4D
      4F575D66AFD1485AF5FF6270FFFF7681FFFF8C8DFFFF9291FFFF8282EDFE7676
      98BF3737383B0000000000000000000000000000000000000000999999B0BFBF
      BFFFEEEEEEFFDBDBDBFFBDBDBDFFB8B8B8FFB7B7B7FFB6B6B6FFC6C6C6FFDDDD
      DDFFB9B9B9FF7D7D7D860000000000000000040404059B9C9BAFE5E6E7FFE4E5
      E5FFE3E5E5FFE3E5E5FFE2E4E4FFE2E3E4FFE1E3E3FFE1E3E3FFE0E2E2FF9FA0
      9DFF555652FF636562FF797A75ED424242430000000001010102050505060909
      090A101010111E1E1E1F37373738202020217A7B7BAE7878789E777777987676
      7694757575917575758E7474748B6363636B00000000000000005F606A79102F
      F5FF193CFFFF2A45FFFF3E55FFFF5264FFFF6673FFFF7881FFFF8888FFFF9695
      FFFF8080CFEE49494A5200000000000000000000000000000000A2A2A2C7C5C5
      C5FFD7D7D7FFD1D1D1FFABABABFFA8A8A8FFA9A9A9FFA2A2A2FFB7B7B7FFA8A8
      A8FFB6B6B6FF909090A50000000000000000040404059B9C9BAFE4E6E6FFE0E3
      E3FFDFE2E2FFDDE1E1FFD2D6D6FFA1A4A3FF8A8E8BFF8F918FFFB3B7B6FF5151
      4CFF636562FF555652FF6969696C0909090A0000000000000000000000000000
      00010101010218181819757A8DB13F3F3F40394349FF3B4348FD242426F62F2F
      2FEC3D3D3DE5484848DF525252D9777777AA0000000055555A650510E9FF0216
      E7FF0522F7FF1E39EAFA676C92AF6466768367687F877275AABF6C73FDFF7C81
      FFFF9191FFFF8180D7F23737373A000000000000000000000000A6A6A6DFD3D3
      D3FFC0C0C0FFD1D1D1FF9B9B9BFFA0A0A0FFA1A1A1FF8F8F8FFFB6B6B6FF6262
      62FFC9C9C9FFA0A0A0CB010101020000000001010102999B9AACEDEEEEFFE2E5
      E5FFE1E3E4FFC1C4C4FF898C88FFC2C0BAFFD5D3CEFFCFCCC5FF92928CFF6365
      62FF4C4B46FF7878787E00000000000000000000000000000000000000000000
      000000000000151515161843C1F65971A7D74A5561FF626F78FF55616AFF3B44
      4AFB363739EC454545E14E4E4EDB767676AC171717184949BCE70000D5FF0005
      DCFF464CB8D83A3A3B3E0000000000000000000000006B6F8B9F5061FDFF616B
      FEFF7378FEFF9394FFFF777795BE0404040500000000020202039F9F9FEFD8D8
      D8FFB1B1B1FFD3D3D3FF8D8D8DFF9B9B9BFF9E9E9EFF7A7A7AFFB7B7B7FF4040
      40FFC6C6C6FF999999E60101010200000000000000009A9A9AAAEEEEEFFFE4E6
      E6FFD9DCDCFF949895FFB9B2A8FFD4C8BFFFCEC1B5FFCABBAEFFC4B7ABFF9494
      8FFFA3A5A3FF5454545500000000000000003D3D3D3E75757D8F75757E8F7575
      7F8F75767F8F76798396093BD3FB1254EFFE39599CFF607080FF637079FF5764
      6DFF36383CF4414141E34B4B4BDD767676AE5D5D62706061F2FF3B3ADAFF3232
      BBEA2525252600000000000000000808080962678CAF2242FFFF3149FCFF465A
      FFFF5865FFFF6D75FFFF7C7FF3FE3838383C0000000012121213868686FDE0E0
      E0FFB3B3B3FFD9D9D9FF787878FF959595FF9A9A9AFF616161FFBFBFBFFF4747
      47FFB3B3B3FF767676F70A0A0A0B00000000000000009A9A9AAAEEEFEFFFE6E8
      E8FFCACDCCFFA4AAA7FFE1D7CEFFE6DED8FFDACEC5FFD5CABFFFCFC1B4FFB5B4
      ADFF8B8F8DFF545454550000000000000000606062670909A8FB0000BBFF0008
      C6FF0016D4FF0020DFFF0032EDFF0349F6FF2C67F3FF4062AEFF627181FF626F
      78FF373A3EF53C3C3CE6454545E1767676B0737492AE686CF3FF6567F2FF6969
      738C000000000000000008080809626485A50620FBFF0727F5FF193CFFFF686C
      8BA8666DAAC64E5FFFFF6873FFFF61616778000000002E2E2E2F7A7A7AFFE3E3
      E3FFB5B5B5FFDBDBDBFF707070FF999999FF989898FF5B5B5BFFCECECEFF5656
      56FFA3A3A3FF606060FE1C1C1C1D00000000000000009A9A9AAAEFF0F0FFE8EA
      EAFFC7CACAFFA6ACA9FFEBE5DFFFEEE8E3FFEAE3DDFFE7E0D9FFE1D9D1FFC1C2
      BDFF737875FF545454550000000000000000606062670909A8FB0000BAFF0005
      C3FF0012D1FF001CDBFF002AE8FF003BF2FF1156F8FF306AF3FF4260A1FF5D6C
      79FF373A3DF6373737E8404040E4757575B27B80B0CB7581F6FF6B71EFFF494A
      4B51000000000909090A69698DB01317E7FF0008D7FF0619F7FF636789A60000
      000164667587334EFFFF5669FFFF6D6E7F9C0000000050505051838383FFF0F0
      F0FFE3E3E3FFDEDEDEFFB4B4B4FFBFBFBFFFBBBBBBFF9F9F9FFFAEAEAEFF9B9B
      9BFFB9B9B9FF424242FF4646464700000000000000009A9A9AAAF8F9F9FFEAEC
      ECFFD2D4D4FFA3A9A6FFDACFC4FFF0EAE5FFF1EDE8FFEFEAE5FFDED5CBFFAFAE
      A7FF939694FF545454550000000000000000606062673F3FB9FB4747CDFF3E42
      CFFF323FD6FF273DDCFF193AE3FF0E3BEBFF0242F3FF074DF7FF2655BDFF5869
      82FF383B3FF72F2F2FEC373737E8747474B48289B6CF8794FEFF7883F0FF4242
      434700000001707186A66A6AF5FF5B5BDDFF5354F1FF6A6B8FAF0A0A0A0B0000
      0000656773864D69FFFF6177FFFF6D6F819E0000000067676769989898FFFBFB
      FBFFF8F8F8FFEEEEEEFFE2E2E2FFD1D1D1FFC1C1C1FFB9B9B9FFA3A3A3FFAFAF
      AFFFCACACAFF545454FF6969696B00000000000000009A9A9AAAF9F9FAFFECEE
      EEFFE5E7E7FFAFB2B1FFB4B1AAFFDACDC2FFEBE3DCFFE1D5C9FFC0BAB0FF9497
      93FFC3C4C4FF545454550000000000000000606062675151C0FB5F5FD4FF5454
      D2FF454DD5FF3747DAFF2841DFFF1B3CE5FF0938EAFF0938C7FF617696FF788C
      95FF35393DF92A2A2AEE313131EB737373B68285A4BA99A9FFFF8F9DFDFF6768
      70867172839E8186FDFF6D70E6FF7475F8FF717187A507070708000000000000
      00006F7195B35568FEFF5770FFFF64656D800E0E0E0F9191919F606060FF6E6E
      6EFF616161FF5C5C5CFF555555FF545454FF565656FF585858FF5B5B5BFF6262
      62FF767676FF525252FF8888889201010102000000009A9A9AAAFAFAFAFFEEEF
      EFFFEDEEEEFFE6E7E7FFAFB2B1FFA4A9A6FFA5ABA8FFA3A9A7FF9BA09EFFA9AC
      ACFFADB0AFFF545454550000000000000000525253567171A3D27676ABD57373
      ABD56E70ABD5666BACD82B3BCAFD2138DBFF223AB5FF8393AFFF9CACB3FF8897
      9FFF33393EFA222222F2272727F0727272B86D6E7B87B4C1FFFF99A8FDFF8693
      EFFE8B99FCFF858EF2FF8B92FFFF75758FAE0909090A00000000000000003232
      33356467D8F45A63EEFF5968F5FF414141463F3F3F40B4B4B4EAC5C5C5FFC4C4
      C4FFB1B1B1FF9B9B9BFF868686FF898989FF888888FF848484FF797979FF7575
      75FF6C6C6CFF8A8A8AFF9A9A9AD32A2A2A2B000000009A9A9AAAFBFBFBFFF0F1
      F1FFEFF0F0FFEDEEEFFFE7E8E8FFD4D5D5FFC9CCCBFFBEC1C0FFA9ACACFF9294
      95FF989B9AFF545454550000000000000000111111122A2A2A2B2A2A2A2B2A2A
      2A2B2A2A2A2B3C3C3C3D2A30AFF93640A9F16D7A99FFC0CED3FFA9B9BFFF8E9D
      A5FF33393DFC1A1A1AF51F1F1FF3717171BA2D2D2E2FB7BEF5FBB3BEFFFFA6B3
      FFFF9AA9FEFF94A1FAFE71717E960000000000000000000000002E2E2E307778
      BFDB6B6CE9FF6A6CF1FF6F71ABD0070707084F4F4F50878787FA767676FF6969
      69FF707070FF7A7A7AFF8C8C8CFF949494FF929292FF878787FF757575FF6E6E
      6EFF626262FF777777FF909090F64B4B4B4C000000009A9A9AAAFBFBFBFFF2F2
      F2FFF1F2F1FFEFF0F0FFEEEFEFFFECEDEEFFEBECEDFFB7B9B8FFAAAEACFFABAF
      ADFF8D9190FF5454545500000000000000000000000000000000000000000000
      000000000000151515165D5E8DD35D5D5E64A2B0B3FFCDDCE1FFB9C7CCFF9FAD
      B3FF34393CFD0F0F0FF9151515F76F6F6FBD0000000074758592D8DFFFFFB8C0
      FEFFB0BBFFFF99A5EDFB66676C814646484D4D4D4F556C6D768D7D80CBEC8284
      F1FF7777E7FF7474EFFF49494A51000000003939393A7D7D7DE4CACACAFFD1D1
      D1FFBFBFBFFF868686FF828282FF818181FF818181FF818181FF8F8F8FFFC7C7
      C7FFCECECEFFC0C0C0FF6B6B6BEF44444445000000009A9A9AAAF7F7F7FFF3F3
      F3FFF3F3F3FFF1F2F1FFF0F1F1FFEEEFF0FFEDEEEEFFC0C1C1FFF2F2F2FFDBDB
      DBFFA5A6A5CF2424242500000000000000000000000000000000000000000000
      000000000000121212134848494B20202021A9B7BAFFD3E2E7FFBDCCD0FFABB8
      BEFF32383BFF060606FC0C0C0CFA6D6D6DBF000000000B0B0B0C86889FB0E0E5
      FFFFC6CDFFFFB8C1FFFFB4C0FFFFA0ADF7FF9AA6F6FF9EA8FFFF939BF8FF9196
      F3FF8B8EF7FF6262687600000000000000000000000020202021939393A4A6A6
      A6C8A4A4A4EF343434FE2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF434343FEAFAF
      AFF5ACACACD8949494B148484849020202030000000082828288C1C3C2FFD4D6
      D5FFD6D8D7FFD6D8D7FFD6D8D7FFD4D5D5FFD2D4D3FFCACCCBFFBFC1C0FFA8A9
      A9D1121212130000000100000000000000000000000000000000000000000000
      00000000000000000000000000001A1A1A1BB0BDC1FFD7E7EBFFBFCDD2FFACB9
      BFFF33393CFF000000FE030303FD6D6D6DC000000000000000000909090A7576
      8390CACCEEF8DBE1FFFFCDD5FFFFC1CBFFFFB6C2FFFFB0BEFFFFA8B3FDFF8F93
      C9E258585B650000000000000000000000000000000000000000030303041D1D
      1D1E636363657E7E7EE64F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF8F8F8FCF5656
      56582D2D2D2E0808080900000000000000000000000016161617545454555454
      5455545454555454545554545455545454555454545554545455545454552626
      2627000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000121212137F8284E18A8F8FE0808587E07A7E
      80E066686AD46C6C6CC16C6C6CC1777777980000000000000000000000000000
      0000313132336E6E7A849091A8B8A1A3C7D7989CBFD0808293AB5E5F636D1818
      1819000000000000000000000000000000000000000000000000865D22FFA181
      50FFA1814FFFA1814FFFA1814FFFA1814FFFA1814FFFA1814FFFA1814FFFA181
      4FFFA07E4EFF9E7C4FFF4D2D03AA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000040101
      010A0202020F0404041205050514040404160606061706060617060606160505
      05140101010E01010108000000010000000000000000000000004242768F3E3E
      8BAF0F0F0F100000000000000000000000000000000000000000000000000F0F
      0F10494995AF4D4D808F00000000000000000000000000000000A28355FFF7F5
      EFFFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFF5F2EAFF513309AA000000000000000000000000000000000000
      0000010101080F2E08780000000E000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000004484949865A5C
      5CB45A5E5DB95A605EBC5B615FBE5D6060C05D625EC15E6261C15D6260C05B61
      5FBE5A5E5CB84A4C4B8C0000000900000001000000004040819F0404B7FF0707
      BAFF33339DCF0F0F0F10000000000000000000000000000000000F0F0F103F3F
      A8CF3636EEFF3E3EF7FF5050909F000000000000000000000000AF9265FFF9F8
      F5FFF3F1E8FFF3F0E7FFF3F0E8FFF3F0E8FFF2EFE6FFEFE9E0FFEFEAE0FFF2EC
      E5FFF2EDE5FFEDE7DDFF573709AA000000000000000000000000000000000000
      00091043109A12A133FF175F18CD040C032C0000000100000000000000000000
      000000000000000000000000000000000000000000000000000BABAFADFFF6F7
      F7FFF4F5F5FFF4F5F5FFF3F4F5FFF3F4F4FFF2F3F4FFF2F3F3FFF1F3F3FFF1F2
      F2FFF3F4F4FFACAFAEFF01010110000000014F4F7A8F0505B5FF0404B7FF0707
      BAFF0A0ABDFF33339ECF0F0F0F1000000000000000000F0F0F103C3CA5CF2D2D
      E4FF3434ECFF3939F2FF3B3BF4FF4D4D808F0000000000000000B69A6FFFF9F8
      F5FFF5F3EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F3ECFFF3F2E8FFF5F2
      EDFFF6F4EEFFECE6DCFF583709AA000000000000000000000000000000070E32
      0D7F149F3AFF0EBA56FF12AC45FF15621CCD0000000E00000001000000000000
      000000000000000000000000000000000000000000000101010AAEB1B0FFEBED
      EDFFDFE3E3FFDEE1E2FFDCE0E1FFDBDEDFFFD9DDDEFFD8DCDCFFD6DBDBFFD5D9
      DAFFE2E5E6FFAEB1B0FF0000000A00000001565693AF5252CEFF0707B7FF0606
      B9FF0909BCFF0C0CC0FF3434A0CF0F0F0F100F0F0F103B3BA4CF2424DAFF2A2A
      E0FF2F2FE6FF3333EBFF3434ECFF494995AF0000000000000000B99E74FFF9F8
      F5FFF5F3EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F3EEFFF6F2EEFFF7F3F0FFF7F4
      F0FFF7F6F0FFECE6DCFF583709AA0000000000000001000000091047189A16A5
      46FF17BE68FF1EB76FFF19B866FF15BA5AFF146723CD040D052B000000010000
      0000000000000000000000000000000000000000000000000003AEB1B0FFECEE
      EEFFA4A8A7FFA4A8A7FFA3A7A6FFA3A7A6FF00265BFF577BA5FFA3BCD9FFD2D8
      DBFFE4E6E6FFAEB1B0FF00000001000000000F0F0F105353A8CF5353CFFF0909
      B9FF0808BBFF0B0BBFFF0F0FC3FF3535A0CF3737A2CF1C1CD1FF2121D6FF2525
      DBFF2929E0FF2C2CE3FF3F3FA8CF0F0F0F100000000000000000B99E74FFF9F8
      F5FFF5F3EDFFF5F2EDFFF5F2EDFFF5F1ECFFF7F5F0FFF6F3EFFFFAF5F3FFFBF6
      F3FFF8F5F2FFECE6DBFF583709AA00000000010101080C36127E18A950FF1CC5
      73FF26C17CFF3AD9AAFF2BC98CFF20C274FF18B85FFF136928CD0000000F0000
      0001000000000000000000000000000000000000000000000000AEB1B0FFEEEF
      EFFFE4E6E6FFE2E4E5FFE1E3E4FFDFE2E3FF628BC0FF2373B5FF126FE1FFA4BC
      DAFFE5E7E8FFAEB1B0FF0000000000000000000000000F0F0F105353A8CF5353
      D0FF0A0ABBFF0A0ABEFF0D0DC1FF1111C5FF1515C9FF1919CEFF1D1DD2FF2020
      D6FF2323D9FF3C3CA5CF0F0F0F10000000000000000000000000B99E74FFF9F8
      F5FFF5F3EDFFF5F2EDFFF4F1ECFFF6F1EDFFF9F5F2FFFBF9F2FFFAF8F4FFFAF6
      F3FFF7F1E9FFEDE6DDFF58370BAA000000000D4F1E9A19B25EFF24D188FF2BC9
      87FF38DBA9FF24C279FF37DAA6FF36D6A2FF27CC85FF1BC574FF136F2DCD040F
      072B000000010000000000000000000000000000000000000000AEB1B0FFEFF0
      F0FFA6AAA8FFA5A9A8FFA4A9A8FFA4A8A7FF869CB6FF189EE2FF1FAAF9FF056D
      E4FF9CBBE2FFA8ADAFFF000000010000000000000000000000000F0F0F105454
      A8CF5454D0FF0C0CBCFF0C0CBFFF0F0FC3FF1212C6FF1515CAFF1818CDFF1C1C
      D1FF3A3AA4CF0F0F0F1000000000000000000000000000000000B89F7AFFF9F8
      F5FFF6F3EDFFF5F2EDFFF6F3EFFFF9F3F1FFFAF9F4FFFBFBF6FFFAF8F5FFF6F2
      EDFFF1EBE3FFEDE4DAFF59390BAA000000000D4E1E9219B666FF39DDA6FF3CDF
      ACFF21B66BFF0C4E1F8E1CA555FF3CDDAAFF35D49BFF2DD390FF1DC273FF1173
      32CD0000000F0000000100000000000000000000000000000000AEB1B0FFF0F1
      F2FFE8EAEAFFE6E8E9FFE5E7E8FFE3E6E6FFE2E4E5FFAFC4DFFF0599E4FF1FAA
      F9FF1672E4FF577DAFFF00000000000000000000000000000000000000000F0F
      0F105454A8CF4B4BCFFF0A0ABDFF0C0CC0FF0F0FC3FF1212C6FF1414C9FF3737
      A1CF0F0F0F100000000000000000000000000000000000000000BBA988FFF9F8
      F5FFFAFBF6FFF9F9F2FFFAF9F9FFFAF9FAFFFAFAF9FFF9F8F8FFF2F0E9FFEDE8
      E1FFE8E0D6FFE1D4C4FF5A3B0FAA00000000000000030A3E197423BC75FF23BB
      73FF0B3D187100000000041F0C39138E46E341E0AEFF40E0A9FF35DFA0FF23D1
      89FF117738CD0410072B00000001000000000000000000000000AEB1B0FFF2F3
      F3FFA7ABA9FFA6AAA9FFA6AAA9FFA5A9A8FFA5A9A8FFA4A9A7FF879DB6FF189E
      E2FF1FAAF9FF056DE4FF1F334F7E0507070E0000000000000000000000000F0F
      0F103E3EA0CF2C2CC4FF1B1BC1FF0C0CBEFF0C0CC0FF0E0EC2FF1111C5FF3535
      A0CF0F0F0F100000000000000000000000000000000000000000C2AF91FFF9F8
      F5FFFBFCF9FFFAFBF8FFFAFAFBFFFAFAFCFFFAFAF7FFF5F3EBFFEDE9E2FFE7E1
      D7FFE0D5C6FFD4C5ADFF5C3D11AA0000000000000000000000010C54268E0C54
      268E000000000000000000000000041F0C391DAE62FF47E5B3FF45E6B0FF39E5
      A8FF21CC85FF117A3CCD0000000F000000010000000000000000AEB1B0FFF3F4
      F4FFECEDEDFFEAEBECFFE9EAEBFFE7E8E9FFE6E8E8FFE4E6E7FFE4E6E7FFAEC4
      DFFF0599E4FF1FAAF9FF0560CFF10619344700000000000000000F0F0F103F3F
      A0CF3232C4FF3030C5FF2E2EC5FF2D2DC6FF2626C5FF1E1EC4FF1D1DC5FF1D1D
      C6FF3C3CA1CF0F0F0F1000000000000000000000000000000000CBB89AFFF9F8
      F5FFFAFBFBFFFAFAFAFFFAFAFBFFFAFBF8FFF6F5EEFFF1ECE2FFDED4C5FFDBCB
      BBFFD1BEA5FFC1AB88FF5E4115AA000000000000000000000000000000000000
      00000000000000000000000000000000000004210E39129652E34BE8BBFF4EEE
      BCFF3FECB1FF28DA99FF107C41CD0311082C0000000000000000AEB1B0FFF4F4
      F5FFA8ACABFFA8ABAAFFA7ABAAFFA7ABA9FFA6AAA9FFA6AAA8FF9FA3A2FF9B9F
      9DFF96ABC6FF1BA1E5FF1C78CEED03173143000000000F0F0F103F3FA0CF3737
      C4FF3434C4FF3232C4FF3030C5FF2E2EC5FF6666D7FF2F2FC7FF2C2CC7FF2C2C
      C8FF2B2BC9FF3C3CA0CF0F0F0F10000000000000000000000000CDBCA0FFF9F8
      F5FFF8FBFBFFFAFBFBFFF9FBF8FFF6F6EDFFF1EDE5FFE8DFD3FFCEBC9FFFE6DD
      D2FFDBD0BAFFBCA37BFF604319AA000000000000000000000000000000000000
      00000000000000000000000000000000000000000000042210391DB66FFF50EB
      C0FF4DF0BDFF41F1B9FF1ED595FF0F8046CD0000000000000000AEB1B0FFF6F6
      F6FFF0F1F1FFEEEFEFFFEDEEEEFFECEDEDFFEAEBECFFE8EAEAFFC9CACBFFA4A5
      A6FFB5B6B7FF90A6BFFF031730430303030A0F0F0F104242A1CF3C3CC5FF3939
      C5FF3737C4FF3434C4FF3232C4FF3E3EA0CF5959AACF6E6ED9FF3030C6FF2D2D
      C6FF2C2CC6FF2C2CC7FF3E3EA0CF0F0F0F100000000000000000CDBDA3FFF9F8
      F5FFFAFBFCFFFBFBFBFFF5F4EFFFEEE8E1FFEBDFD5FFD8C8B4FFCEBB9DFFF4F1
      E9FFC4AE8BFF81663BC600000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004231239119C
      5CE350EEC3FF40EFBDFF119D5DE3042312390000000000000000AEB1B0FFF7F7
      F7FFAAADACFFA9ADABFFA9ACABFFA8ACAAFFA8ABAAFFD4D6D6FFA2A3A2FFACAF
      AEFFABAFADFF939795FF00000000000000005D5D96AF5252CCFF3F3FC6FF3C3C
      C5FF3939C5FF3737C4FF3F3FA0CF0F0F0F100F0F0F105A5AAACF6F6FD8FF3131
      C5FF2E2EC5FF2E2EC5FF2E2EC5FF47478DAF0000000000000000CEBFA5FFF9F8
      F5FFFAFBFAFFF9F6F0FFF1E9E2FFE6DFD6FFE0D1C0FFD2BDA2FFBEAB88FFD0C0
      A7FF7F6538C6120C071C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000424
      12391EBD7BFF1CBD7AFF04241239000000000000000000000000AEB1B0FFF7F7
      F7FFF3F3F3FFF2F3F2FFF1F2F1FFF0F0F0FFEEEFEFFFEDEEEDFFC0C0C0FFF9F9
      F9FFE1E3E2FF5A5B5A9E00000000000000005D5D808F9898E6FF5151CCFF3F3F
      C6FF3C3CC5FF3F3FA0CF0F0F0F1000000000000000000F0F0F105A5AAACF7070
      D8FF3333C5FF3030C4FF3030C4FF4A4A788F0000000000000000CEC1A7FFF5F3
      EEFFFAF8F6FFF3EFEBFFEBE2D6FFDED4C4FFD4C1A7FFC3AD89FFA1814AFF8166
      3DC6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000022512390225123900000000000000000000000000000000878A89DDD2D4
      D3FFD6D8D7FFD6D8D7FFD6D8D7FFD6D8D7FFD6D8D7FFD6D8D7FFD6D8D7FFC0C2
      C1FF3E403F850000000B00000000000000000000000063638E9F9898E6FF5252
      CCFF4242A1CF0F0F0F10000000000000000000000000000000000F0F0F105A5A
      AACF7272D8FF3636C4FF4B4B849F000000000000000000000000C5B495FFCFBF
      A6FFCEBEA5FFCCBBA0FFC9B79BFFC5B08EFFC0A780FFAF9565FF78582CC6110B
      061C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000171717332C2E
      2D552C2E2D552C2E2D552C2E2D552C2E2D552C2E2D552C2E2D552C2E2D552C2E
      2D550101010B00000000000000000000000000000000000000005D5D808F5D5D
      96AF0F0F0F100000000000000000000000000000000000000000000000000F0F
      0F105C5C95AF55557C8F0000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00000000000000000083C1000000000000
      87E100000000000083C10000000000008181000000000000A185000000000000
      F3CF000000000000FFFF000000000000FFFF000000000000F3CF000000000000
      A185000000000000818100000000000083C100000000000087E1000000000000
      83C1000000000000FFFF000000000000F00FF00F00000000E007E00700000000
      C003C00300000000800180010000000003800000000000000700000000000000
      0E000000000000000C1000000000000008300000000000000070000000000000
      00E000000000000001C00000000000008001800100000000C003C00300000000
      E007E00700000000F00FF00F00000000C0038000800FF00FC0030000000FE007
      C00300008000C003C0030000E0008001C0010003F80003808001800300000600
      8001800300000C00800180030000080080018003000000108001800300000030
      000080030000006000008003000001C000008003F800800100008003F8008003
      80008003FE00C007C003800FFE00F00FC001FFFFC001C7E3C001F0FF800083C1
      C001E07F80000180C001C03F80000000C001001F80010000C001000FC0038001
      C0010007C001C003C0010003C003E007C0010401C000E007C0018E00C000C003
      C001FF00C0008001C001FF80C0000000C003FFC0C0030000C003FFE1C0030180
      C00FFFF3C00383C1C00FFFFFC007C7E300000000000000000000000000000000
      000000000000}
  end
  object ImgListBotoes24: TImageList
    ColorDepth = cd32Bit
    Height = 24
    Width = 24
    Left = 366
    Top = 319
    Bitmap = {
      494C010107000900040018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000003000000001002000000000000048
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002A2A2A2B7070707290909096A2A2A2B6A4A4A4D29191
      91E9969696E5A5A5A5CEA1A1A1B38F8F8F957171717324242425000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      0006000000090000000D00000012000000160000001900000019000000180000
      0015000000110000000C00000008000000050000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005D5D5D5EA6A6A6D6656565FE4E4E4EFF5C5C5CFF737373FF787878FF9494
      94FF909090FF808080FF6A6A6AFF5B5B5BFF494949FF545454FD9C9C9CDA4545
      4546000000000000000000000000000000000000000000000001060606071313
      1314212121222B2B2B2C32323233353535363A3A3A3B3D3D3D3E414141424242
      4243444444454343434442424243414141423939393A2D2D2D2E1F1F1F206666
      6668302E28FF302E28FF8E8D8D97000000000000000000000002000000060000
      000D000000150000001E000000260000002F0000003400000036000000330000
      002D000000250000001C000000130000000B0000000400000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004C4C
      4C4D6C6C6CFD696969FFC7C7C7FFEFEFEFFFF0F0F0FFE3E3E3FFD1D1D1FFD1D1
      D1FFD2D2D2FFD4D4D4FFD6D6D6FFD6D6D6FFE1E1E1FFCACACAFF4B4B4BFF6969
      69F71111111200000000000000000000000000000000070707089A9A9AA5858A
      88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF626461FF302E
      28FF858A88FF858A88FF302E28FF000000000000000000000002000000060000
      000E000000160000001F00000028000000300000003600000038000000350000
      002F000000260000001E000000150000000C0000000500000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007C7C
      7C7F5B5B5BFFEFEFEFFFFCFCFCFFE7E7E7FFDBDBDBFFCECECEFFAFAFAFFFC7C7
      C7FFC5C5C5FFB0B0B0FFC4C4C4FFC6C6C6FFD9D9D9FFF6F6F6FFFFFFFFFF3434
      34FF3C3C3C3D000000000000000000000000000000000E0E0E0F858A88FFE6E7
      E7FFE6E7E7FFE6E7E7FFE6E7E7FFE6E7E7FFE6E7E7FFE6E7E7FFE6E7E7FFE6E7
      E7FFE6E7E7FFE6E7E7FFE6E7E7FFE6E7E7FFE6E7E7FFA6A6A4FF302E28FF858A
      88FF4F504CFF858A88FF302E28FF000000000000000000000001000000030000
      00070000000B0000000F0000001400000019000000240000001F0000001C0000
      00220202028F000000730000006F0000006D0000006A00000069000000670000
      0066000000660000006500000065000000400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009292
      929A616161FFEFEFEFFFE9E9E9FFCACACAFFD8D8D8FFC2C2C2FF8A8A8AFFBABA
      BAFFBABABAFF8A8A8AFFB6B6B6FFC2C2C2FFA6A6A6FFCDCDCDFFFFFFFFFF1A1A
      1AFF606060610000000000000000000000000000000011111112858A88FFE6E7
      E7FFE0E2E3FFDEE2E2FFDEE1E1FFDDE0E1FFDCE0E0FFDADEDFFFDADDDEFFD8DC
      DDFFD7DCDCFFD7DBDBFFD5DADAFFD5D9D9FFD4D8D9FF302E28FF858A88FF4F50
      4CFF858A88FF302E28FF5C5C5C5D000000000000000000000000000000010000
      000100000002000000030000000500000007000000280008229E0000000B0000
      002D293035FF1F2326FE030404F8000000F3000000EE000000EA000000E60000
      00E2000000DD000000D9000000D5000000930000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A2A2
      A2B26D6D6DFFF4F4F4FFDFDFDFFFBBBBBBFFDADADAFFBCBCBCFF838383FFB9B9
      B9FFBABABAFF838383FFAEAEAEFFCDCDCDFF888888FFA6A6A6FFFFFFFFFF2A2A
      2AFF7F7F7F82000000000000000000000000000000000C0C0C0D858A88FFE6E7
      E7FFE1E4E4FFE0E3E4FFDFE2E3FFDEE2E2FFDDE0E1FFDCDFE0FFB3B7B7FF6D6F
      6CFF636662FF636662FF6D6F6CFFB0B5B5FF878885FF302E28FF4F504CFF858A
      88FF302E28FF5C5C5C5D00000000000000000000000000000000000000000000
      00000000000000000000000000000000000100000022002494F1000E30970000
      002B40494FFF5C6972FF48525AFE1E2226FB030303F2000000EB000000E60000
      00E2000000DE000000DA000000D7000000940000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A7A7
      A7C8797979FFFDFDFDFFD0D0D0FFAEAEAEFFE1E1E1FFB3B3B3FF727272FFB8B8
      B8FFB8B8B8FF737373FFA3A3A3FFDCDCDCFF696969FF717171FFFFFFFFFF5252
      52FF9A9A9AA50000000000000000000000000000000005050506858A88FFF2F2
      F2FFE2E5E6FFE1E4E5FFE0E3E4FFE0E2E3FFD4D7D7FF6D706CFF969B99FFD3D7
      D5FFD8DCDAFFD8DCDAFFD3D7D5FF969B99FF4D4E4AFF6F726EFF302E28FF302E
      28FF5C5C5C5D0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000021002CB1F30143D9FB0713
      31A84A5258FF64727BFF626F78FF5D6A73FF444D55FE1A1E21F7020203EA0000
      00E3000000DF000000DC000000D8000000950000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A0A0
      A0DC8E8E8EFFFDFDFDFFC2C2C2FFA2A2A2FFECECECFFA9A9A9FF696969FFB7B7
      B7FFBABABAFF6A6A6AFF969696FFE3E3E3FF5C5C5CFF515151FFFFFFFFFF6A6A
      6AFF9F9F9FC90606060700000000000000000000000001010102858A88FFF2F2
      F2FFE4E7E6FFE3E5E5FFE2E4E5FFE1E3E4FF6D706DFF9FA6A3FFB4AA9CFFD1C1
      B4FFD1C4BAFFC9BBAEFFC0AC9BFFC9B8A9FF9FA6A3FF555653FF959491FF858A
      88FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000021002BB0F3004BF8FF1E57
      D9FC2E3D58FF6E7C85FF6A7781FF64727BFF5D6A73FF535F69FF292F34FB0000
      00E4000000E1000000DD000000DB000000960000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000060606079393
      93EC999999FFF8F8F8FFB6B6B6FF9D9D9DFFEEEEEEFF9F9F9FFF5F5F5FFFB7B7
      B7FFBBBBBBFF5F5F5FFF878787FFE7E7E7FF555555FF303030FFDFDFDFFF8787
      87FF838383E10000000000000000000000000000000000000000858A88FFF2F2
      F2FFE5E7E8FFE4E6E7FFE4E6E6FFB7BBBAFF828683FFB6AB9EFFDAD0C7FFDBD0
      C8FFCEC1B5FFCEC1B5FFCDC0B5FFC9BBAEFFCAB9AAFF969B99FFC0C2C1FF858A
      88FF0000000000000000000000000000000000000021000047D600005AD60000
      5CD6000560D6000965D6000C68D600106ED6001471D60032D2FC0048F6FF1B5E
      F8FF3569DDFF44536CFF708088FF6C7A83FF64717AFF5A6670FF2F353BFB0000
      00E6000000E2000000DF000000DD000000970000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000121212137676
      76FBA6A6A6FFFAFAFAFFB6B6B6FFABABABFFEFEFEFFF929292FF545454FFB4B4
      B4FFBABABAFF555555FF6E6E6EFFE5E5E5FF6A6A6AFF363636FFBCBCBCFFABAB
      ABFF5C5C5CF00A0A0A0B00000000000000000000000000000000858A88FFF2F2
      F2FFE7E8E9FFE6E8E8FFE5E7E7FF989D9BFFA9B0ADFFD8CABEFFE9E3DDFFE0D6
      CFFFD5C8BEFFD2C5B9FFCFC3B7FFCEC2B6FFC4B09FFFA9B0ADFF9B9F9EFF858A
      88FF0000000000000000000000000000000000000021000088F30000B8FF0000
      B9FF0008C2FF0010CAFF0018D2FF0020DBFF0027E3FF0033EBFF0043F4FF0F56
      F8FF2E6CF9FF4573DEFF45556CFF72818AFF6B7882FF606D76FF32383EFC0000
      00E7000000E4000000E1000000DF000000980000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002F2F2F306464
      64FFB4B4B4FFFBFBFBFFB4B4B4FFB3B3B3FFEEEEEEFF8D8D8DFF565656FFB9B9
      B9FFBCBCBCFF575757FF6B6B6BFFE1E1E1FF909090FF363636FFA2A2A2FFC0C0
      C0FF383838FA1D1D1D1E00000000000000000000000000000000858A88FFF2F2
      F2FFE8E9EAFFE7E9E9FFE6E8E8FF888D8BFFB3BAB7FFE5DDD5FFEDE8E3FFEAE4
      DEFFE9E2DCFFDDD4CBFFDFD6CDFFD9CEC5FFCFC2B6FFB3BAB7FF717572FF858A
      88FF0000000000000000000000000000000000000021000088F30000B8FF0000
      B8FF0006BFFF000EC8FF0015D0FF001DD8FF0025E0FF002DE8FF003CF0FF004B
      F8FF1B5FF8FF3772F9FF4775DDFF45556CFF707E88FF66747DFF353C41FC0000
      00E9000000E6000000E3000000E1000000980000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000505050515959
      59FFCACACAFFEFEFEFFFB2B2B2FFBFBFBFFFE9E9E9FF848484FF4E4E4EFFC0C0
      C0FFB9B9B9FF505050FF646464FFDEDEDEFFBBBBBBFF2E2E2EFF717171FFF5F5
      F5FF151515FF3131313200000000000000000000000000000000858A88FFF2F2
      F2FFE9EBEBFFE8EAEAFFE7E9E9FF888D8BFFB7BDBAFFECE6E0FFEEE9E4FFEFEA
      E5FFECE6E1FFECE7E2FFEAE4DEFFEAE5DFFFE2D9D1FFB3BAB7FF717572FF858A
      88FF0000000000000000000000000000000000000021000088F30000B8FF0000
      B8FF0003BDFF000BC5FF0012CDFF001AD5FF0021DCFF0028E4FF0033EBFF0041
      F3FF054FF8FF1E61F8FF3470F9FF3E6FDDFF41516CFF6B7983FF383F44FC0000
      00EB000000E8000000E5000000E40000009A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006E6E6E705252
      52FFDCDCDCFFF6F6F6FFE2E2E2FFDCDCDCFFE1E1E1FFA3A3A3FF989898FFC9C9
      C9FFC8C8C8FF979797FF858585FFB6B6B6FFB3B3B3FF6D6D6DFF989898FFCACA
      CAFF020202FF5B5B5B5C00000000000000000000000000000000858A88FFFFFF
      FFFFEBECECFFEAEBEBFFE9EAEAFF999D9CFFA9B0ADFFDACBBDFFF0ECE8FFF1ED
      E8FFF1EDE8FFF1EDE8FFEDE8E3FFECE7E1FFCDBBABFFA9B0ADFF878987FF858A
      88FF00000000000000000000000000000000000000210E0E8EF44A4ACDFF4545
      CBFF4041CBFF3940CFFF313ED4FF2A3DD9FF233DDEFF1A3BE2FF133BE8FF0B3F
      EEFF0446F3FF034EF8FF165BF8FF2566F9FF294788FF657178FF3B4348FD0000
      00EC000000EA000000E8000000E60000009B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008888888C5A5A
      5AFFE3E3E3FFFFFFFFFFEEEEEEFFE1E1E1FFDADADAFFE1E1E1FFD9D9D9FFC6C6
      C6FFBABABAFFD2D2D2FFC0C0C0FF9F9F9FFFA6A6A6FFD7D7D7FFDFDFDFFFD0D0
      D0FF070707FF8282828700000000000000000000000000000000858A88FFFFFF
      FFFFECEEEEFFEBECECFFEAECECFFBBBEBDFF969B99FFBDB1A4FFE8DED8FFEFE9
      E3FFF2EEE9FFF0ECE7FFF0EBE6FFE5DDD4FFBCB2A4FF969B99FFC0C2C1FF858A
      88FF000000000000000000000000000000000000002112128FF45F5FD3FF5C5C
      D2FF5656D0FF4E51D1FF464FD5FF3D4BD8FF3347DCFF2A45E0FF2041E5FF173F
      E9FF0D40EDFF0342F1FF0047F6FF183F95FF6A7986FF77868FFF3E454BFD0000
      00EE000000EC000000EA000000E90000009B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9CA67171
      71FFFCFCFCFFFFFFFFFFFFFFFFFFFEFEFEFFF4F4F4FFEAEAEAFFD8D8D8FFD0D0
      D0FFC4C4C4FFB9B9B9FFAFAFAFFFA3A3A3FFA5A5A5FFA2A2A2FFBBBBBBFFD1D1
      D1FF272727FF9B9B9BAC00000000000000000000000000000000858A88FFFFFF
      FFFFEDEEEFFFECEEEDFFECECEDFFEAEBECFF9A9E9CFF9FA6A3FFBEB3A6FFDAC8
      BAFFE8DFD6FFE7DDD5FFD3C0AEFFBFB5A7FF9FA6A3FF838684FFF2F2F2FF858A
      88FF0000000000000000000000000000000000000021131391F46D6DD7FF6A6A
      D6FF6262D4FF5858D1FF4F54D4FF454FD6FF3B4ADAFF3146DCFF2742E0FF1E3F
      E4FF133AE7FF0837EBFF193893FF788895FF8B9AA2FF7C8C94FF40484DFD0000
      00F0000000EE000000EC000000EB0000009C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A6A6A6C65A5A
      5AFF6A6A6AFF474747FF373737FF2F2F2FFF272727FF1F1F1FFF181818FF1313
      13FF161616FF222222FF2E2E2EFF393939FF464646FF5B5B5BFF818181FFABAB
      ABFF4B4B4BFF999999C900000000000000000000000000000000858A88FFFFFF
      FFFFEFEFEFFFEEEFEEFFEDEDEEFFECEDEDFFDEE0E0FF9A9E9CFF969B99FFA9B0
      ADFFB3BAB7FFB3BAB7FFA9B0ADFF969B99FF828683FFB3B6B7FFCCCDCDFF858A
      88FF00000000000000000000000000000000000000210E0E8EF45151CFFF5353
      CFFF4D4DCEFF4646CCFF3F40CCFF373ECFFF303CD3FF2F3FD7FF2C41DCFF223D
      DEFF1535E1FF1D3390FF92A0ABFF9DAEB5FF90A0A7FF829199FF424B50FE0000
      00F3000000F0000000EF000000EE0000009D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000082828287353535FE5555
      55FFA2A2A2FFB9B9B9FFC6C6C6FFCBCBCBFFCDCDCDFFD0D0D0FFDADADAFFE2E2
      E2FFE1E1E1FFCFCFCFFFBBBBBBFFA9A9A9FF989898FF858585FF5F5F5FFF3838
      38FF262626FF525252F514141415000000000000000000000000858A88FFFFFF
      FFFFF0F0F1FFEFF0F0FFEEEFEFFFEDEEEEFFECEDEEFFECEDEDFFBCBEBEFF999D
      9CFF888D8BFF888D8BFF959A98FFADB1B0FFC1C3C3FFAFB1B1FFAEAFAFFF858A
      88FF000000000000000000000000000000000000001000001B7F00001D810000
      1D8100001D8100001D8100001D8100011E8100011C8E1922A0F72F3ED6FF2035
      D8FF152581FF9DAAB4FFBFCDD2FFA8B8BEFF95A5ACFF86959DFF444C52FE0000
      00F5000000F3000000F1000000F00000009E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8EDDFFFFFFFFF9F9
      F9FFDEDEDEFFC5C5C5FFACACACFF969696FF797979FF606060FF5E5E5EFF5C5C
      5CFF5D5D5DFF616161FF656565FF6A6A6AFF6D6D6DFF727272FF757575FF9494
      94FFCCCCCCFF767676FF9D9D9DB8000000000000000000000000858A88FFFFFF
      FFFFF2F2F2FFF1F1F1FFF0F0F0FFEEEFF0FFEDEEEEFFEDEEEEFFECEDEDFFEAEB
      ECFFE9EBEBFFE8EAEBFFCBCCCCFFB6B7B9FF818383FF818384FF9C9D9DFF858A
      88FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000021181D99F42934CFFF050D
      66DF69727DFFCADADEFFC4D2D7FFB7C6CBFF9AABB2FF8999A0FF464E54FE0000
      00F7000000F5000000F4000000F30000009F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006F6F6FF0ABABABFF6C6C
      6CFF494949FF434343FF464646FF4C4C4CFF545454FF606060FF696969FF7373
      73FF717171FF656565FF585858FF4C4C4CFF484848FF464646FF3D3D3DFF4545
      45FF929292FFB0B0B0FF8D8D8DDD000000000000000000000000858A88FFFFFF
      FFFFF3F3F3FFF2F2F2FFF2F2F1FFF0F1F1FFEFEFF0FFEEEFEFFFEDEEEEFFECED
      EDFFEBECEDFFEAECECFF9B9C9BFF858A88FF858A88FF858A88FF858A88FF858A
      88FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000002112138FF4060A62D90000
      0853889598FFD1E0E4FFC9D8DCFFBECCD1FFACBABFFF909FA6FF485055FE0000
      00F9000000F7000000F6000000F5000000A00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000686868F1565656FFAAAA
      AAFFBABABAFFC0C0C0FFCACACAFFD3D3D3FFDADADAFFDBDBDBFFDADADAFFD9D9
      D9FFD9D9D9FFDBDBDBFFDDDDDDFFD9D9D9FFD1D1D1FFC7C7C7FFBFBFBFFF9C9C
      9CFF727272FF464646FF636363F3000000000000000000000000858A88FFFFFF
      FFFFF3F3F3FFF3F3F3FFF2F3F2FFF1F2F1FFF0F1F0FFF0F0F0FFEEEFEFFFEDEE
      EFFFEDEEEDFFEBECECFFA3A4A4FFF0F0F0FFFFFFFFFFF4F4F4FFABABABFF858A
      88FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000002100003EDA000006330000
      00288E999CFFD6E6EAFFCDDCE1FFC1CFD4FFB3C1C6FFA5B2B8FF50585CFF0000
      00FB000000FA000000F8000000F8000000A10000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008888888E373737FFD3D3
      D3FFE3E3E3FFD7D7D7FFDADADAFF737373FF515151FF545454FF545454FF5454
      54FF545454FF545454FF535353FF4F4F4FFFA5A5A5FFD7D7D7FFD7D7D7FFE6E6
      E6FFDCDCDCFF343434FF9F9F9FBC000000000000000000000000858A88FFF6F6
      F6FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF1F1F1FFF0F0F0FFEFF0
      F0FFEEEEEFFFEDEEEEFFAEAFAFFFE9E9E9FFFFFFFFFFB3B3B3FF858A88FF2525
      2526000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000190000042F000000000000
      0028929FA2FFDCECF0FFD1E0E4FFC3D2D6FFB5C2C8FFA7B3B9FF525B60FF0000
      00FE000000FC000000FB000000FA000000A20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004949494A8080
      80E7676767FFB2B2B2FFDADADAFF464646FF383838FF3C3C3CFF3C3C3CFF3C3C
      3CFF3C3C3CFF3C3C3CFF3C3C3CFF313131FF8D8D8DFFDFDFDFFFBCBCBCFF6E6E
      6EFF444444FB9494949F0B0B0B0C000000000000000000000000858A88FFD3D3
      D3FFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
      F9FFF8F9F9FFF8F9F9FFE7E7E7FFE4E4E4FFCDCDCDFF858A88FF2A2A2A2B0101
      0102000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      002897A3A6FFE0F1F4FFD2E2E6FFC4D2D7FFB6C3C9FFA7B4BAFF535B60FF0000
      00FE000000FE000000FD000000FD000000A20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026262627707070729E9E9EB9343434FA1D1D1DFF1B1B1BFF1B1B1BFF1B1B
      1BFF1B1B1BFF1B1B1BFF1C1C1CFF1B1B1BFF4F4F4FF7989898D4989898A64E4E
      4E4F00000001000000000000000000000000000000000000000065656566858A
      88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF858A88FF858A88FF858A88FF858A88FF858A88FF2F2F2F30000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      002899A5A8FFE2F1F5FFD3E2E6FFC4D3D7FFB6C3C9FFA7B4BAFF535B60FF0000
      00FE000000FE000000FE000000FE000000A30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000898989906D6D6DFF6F6F6FFF6F6F6FFF6F6F
      6FFF6F6F6FFF6F6F6FFF6F6F6FFF707070F83B3B3B3C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00172A2E2ED3333638D02D3334D0292D2FD026292BD0222627D016181ACC0000
      00A3000000A3000000A3000000A3000000750000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000784C
      0BFF784C0BFF7A4B06FF794B06FF794B06FF794B06FF794B06FF794B06FF794B
      06FF794B06FF794B06FF794B06FF794B06FF794B06FF794B06FF784A05FF7445
      06FF744506FF744506FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000373737387171727887878FAE66667ED82222
      4BF522224BF566667ED887878FAE717172783737373800000000000000000000
      000000000000000000000000000000000000000000000000000000000000784C
      0BFFF2EEE4FFF2EEE4FFF2EEE4FFF2EEE4FFF2EEE4FFF2EEE4FFF2EEE4FFF2EE
      E4FFF2EEE4FFF2EEE4FFF2EEE4FFF2EEE4FFF2EEE4FFF2EEE4FFF2EEE4FFF2EE
      E4FFF2EEE4FF744506FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010606
      060713131314212121222B2B2B2C32323233353535363A3A3A3B3D3D3D3E4141
      414242424243444444454343434442424243414141423939393A2D2D2D2E1F1F
      1F20111111120303030400000001000000000000000000000000000000000000
      0000000000003C3C3C3D8484889835355BEF03038FFF0605A2FF0707AFFF0808
      B9FF0808B9FF0707AFFF0605A2FF03038FFF35355BEF848488983C3C3C3D0000
      0000000000000000000000000000000000000000000000000000000000007D51
      12FFEEE9E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2EEE4FF7D5112FF00000000000000000000000000000000000000000000
      00000000000000000000030303041C1C1C1D206913FF1C1C1C1D040404050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000070707089595
      95A5858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF969797A90F0F0F1002020203000000000000000000000000000000000000
      00006666676A666681D80605A6FF0B0BC2FF1010D6FF1211E1FF1212E6FF1212
      E8FF1212E6FF1111E3FF1110DBFF0D0DC6FF0A0ABEFF0605A4FF666681D86666
      676A000000000000000000000000000000000000000000000000000000009066
      28FFEEE9E1FFFFFFFFFFF2F0E8FFF2EFE3FFF2EFE3FFF2EFE5FFF2EFE5FFF2EF
      E5FFF2EFE5FFECE8DCFFECE2DAFFEDE5DBFFEFE8DCFFF0E9E0FFE8DFCFFFFFFF
      FFFFE4DBCCFF83520EFF00000000000000000000000000000000000000000000
      000000000000030303041B1B1B1C1F6B16FF13A130FF1F6A16FF1C1C1C1D0505
      0506000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0E0E0F858A
      88FFF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FF858A88FF1515151603030304000000000000000000000000000000007272
      747919194EF80B0ABCFF1010CBFF1212D4FF1111CDFF1010C4FF0E0EBFFF0D0D
      BDFF0D0DC0FF0F0FC5FF1111CCFF1311D2FF1211D0FF0D0DBCFF0A09B8FF1919
      4EF8727274790000000000000000000000000000000000000000000000009066
      28FFEEE9E1FFFFFFFFFFF5F3EDFFF5F2EEFFF5F2EEFFF5F2EEFFF5F2EEFFF5F2
      EEFFF5F2EFFFF7F4EDFFF5F4EAFFF0F2EAFFF2F0EDFFF6F4F1FFF3EEE8FFFFFF
      FFFFE3DACAFF84540FFF00000000000000000000000000000000000000000000
      0000020202031B1B1B1C1F6E19FF14A335FF08D459FF14A335FF1F6D19FF1C1C
      1C1D040404050000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000011111112858A
      88FFFFFFFFFFE0E2E3FFDEE2E2FFDEE1E1FFDDE0E1FFDCE0E0FFDADEDFFFDADD
      DEFFD8DCDDFFD7DCDCFFD7DBDBFFD5DADAFFD5D9D9FFD4D8D9FFD2D8D8FFFFFF
      FFFF858A88FF13131314030303040000000000000000000000006666676A1919
      51F80F0DC3FF1212C2FF1010B9FF0C0CA7FF0C0CA7FF060587FF02026AFF0000
      4CFF00004CFF02026DFF060696FF0B0BAFFF0F0FBFFF1212C1FF1010BEFF0D0C
      BEFF191951F86666676A00000000000000000000000000000000000000009E79
      3FFFEEE9E1FFFFFFFFFFF5F3EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2
      EDFFF5F2EDFFF5F2EDFFF5F2EBFFF4F2E7FFF5F2E8FFF5F2EDFFF2EFE4FFFFFF
      FFFFE3D9CAFF84540FFF00000000000000000000000000000000000000000001
      00011C1C1C1D1E6F1CFF14A53CFF0EC35FFF12AE5AFF0EC35FFF14A53CFF1E6F
      1CFF1C1C1C1D0202020300000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C0D858A
      88FFFFFFFFFFE1E4E4FFE0E3E4FFDFE2E3FFDEE2E2FFDDE0E1FFDCDFE0FFDBDE
      DFFFD9DDDEFFD8DDDEFFD8DCDDFFD7DBDCFFD5DADBFFD5D9DAFFD4D8D9FFFFFF
      FFFF858A88FF0909090A0101010200000000000000003C3C3C3D666687D80F0F
      C4FF1212BEFF0F0FACFF0E0EA6FF0E0EABFF060684FF71719AFFB0B0C2FFD9D9
      DFFFD9D9DFFFB0B0C2FF71719AFF323267FD0A09AAFF1010C1FF1111B9FF1111
      BCFF0E0EC1FF666687D83C3C3C3D000000000000000000000000000000009E79
      3FFFEEE9E1FFFFFFFFFFF5F3EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2
      EDFFF5F2EDFFF5F2EDFFF6F2EEFFF6F3EEFFF6F4EEFFF6F4F0FFF3F2E7FFFFFF
      FFFFE3D9CAFF84540FFF00000000000000000000000000000000030303041C1C
      1C1D1D7320FF15A843FF13C96AFF19B163FF1AAC61FF19B163FF13C96AFF15A8
      43FF1D7320FF1C1C1C1D04040405000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000005050506858A
      88FFFFFFFFFFE2E5E6FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF000000FF0057CEFFAEC3DAFFD8DCDDFFD7DBDCFFD7DADBFFD6D9DAFFFFFF
      FFFF858A88FF0101010200000000000000000000000084848A980C0BB9FF1413
      C3FF1010AEFF1010AAFF1010AAFF1010ADFF1010B8FF000049FFDDDDDEFFDDDD
      DEFFDDDDDEFFDDDDDEFFDDDDDEFFB9B9C6FF555588FF0908A1FF1212C6FF1212
      B9FF1312C1FF0C0BB8FF84848A98000000000000000000000000000000009E79
      3FFFEEE9E1FFFFFFFFFFF5F3EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2
      EDFFF8F5F0FFF3F2ECFFF6F2EFFFF9F4F4FFF9F5F3FFF9F5F1FFF5F2EBFFFFFF
      FFFFE3D9C9FF84540FFF000000000000000000000000040404051B1B1B1C1C76
      23FF15AA4AFF17CE74FF1EB96DFF20B46BFF2FD59EFF20B46BFF1EB96DFF17CE
      74FF15AA4AFF1C7623FF1C1C1C1D050505060000000000000000000000000000
      000000000000000000000000000000000000000000000000000001010102858A
      88FFFFFFFFFFE4E7E6FFE3E5E5FFE2E4E5FFE1E3E4FFE0E2E3FFDFE1E3FFDDE1
      E1FF0057CEFF000000FF315266FF0057CEFFACC3DAFFD8DCDCFFD7DADBFFFFFF
      FFFF858A88FF0101010200000000000000003737373835356FEF1414D1FF1414
      B9FF1212B1FF1212B3FF1212B1FF1212B1FF1313BBFF07078FFF00004EFFD1D1
      D3FFD1D1D3FFD1D1D3FFD1D1D3FFD1D1D3FFC6C6CCFF515187FF0D0CB4FF1413
      C3FF1515BDFF1313D0FF35356FEF373737380000000000000000000000009E79
      3FFFEEE9E1FFFFFFFFFFF5F3EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F1
      ECFFF9F7F2FFF4F2EDFFF8F4F0FFFCF6F4FFFAF5F2FFFDF6F4FFF5EEECFFFFFF
      FFFFE3D9C9FF84540FFF0000000000000000020202031B1B1B1C1B7928FF16AD
      51FF1CD482FF24C177FF26BD75FF36D7A8FF49E6C0FF39DCB0FF26BD75FF24C1
      77FF1CD482FF16AD51FF1B7928FF1C1C1C1D0404040500000000000000000000
      000000000000000000000000000000000000000000000000000000000000858A
      88FFFFFFFFFFE5E7E8FFE4E6E7FFE4E6E6FFE2E5E5FFE2E4E4FFE0E3E4FFDFE2
      E3FFDFE1E2FF0057CEFF39AFFCFF0074F5FF0057CEFFD9DCDEFFD8DCDDFFFFFF
      FFFF858A88FF000000000000000000000000717173780C0BA7FF1616CAFF1515
      BAFF1313B9FF090993FF1414C2FF1515C1FF1515BAFF1615C5FF090999FF0000
      54FFC9C9CBFFC9C9CBFFC9C9CBFFC9C9CBFFC9C9CBFFA8A8B8FF2C2C6DFD1212
      C4FF1515BEFF1616CAFF0C0BA7FF717173780000000000000000000000009E79
      3FFFEEE9E1FFFFFFFFFFF5F3EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2
      ECFFF7F5EFFFFBF5F2FFFCF9F2FFFAF7F1FFFAF5F1FFFCF7F6FFF4ECE1FFFFFF
      FFFFE3DACBFF845410FF00000000000000001B1B1B1C1A802CFF15B057FF1FD8
      8AFF28C781FF2AC37CFF35D8A8FF44E7BBFF1FD587FF45E8BDFF3ADEB4FF2EC9
      8BFF28C781FF1FD88AFF15B057FF1A802CFF1D1D1D1E02020203000000000000
      000000000000000000000000000000000000000000000000000000000000858A
      88FFFFFFFFFFE7E8E9FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF858A88FF0057CEFF00D4F5FF39AFFCFF0074F5FF0057CEFFADC3DAFFFFFF
      FFFF858A88FF000000010000000000000000878795AE1211CCFF1717C2FF1717
      C6FF0B0BA1FF616195FF000059FF09099AFF1817C9FF1717BEFF1817C9FF0A09
      9FFF000059FFCACACCFFCACACCFFCACACCFFCACACCFFCACACCFF616195FF0D0C
      AEFF1817C7FF1717C2FF1211CCFF878795AE0000000000000000000000009E79
      3FFFEEE9E1FFFFFFFFFFF5F3EDFFF5F2EDFFF5F2ECFFF3F0EBFFF4F0EBFFF8F0
      F0FFFAF2F7FFFAF8F1FFFAFDF1FFFBFCF9FFFCF8F9FFF7F3EEFFEEE5DAFFFFFF
      FFFFE5DBCFFF845511FF0000000000000000198230FF16B15CFF23EAA1FF2BD0
      8DFF2EC987FF36D7A2FF46EBBFFF16B05BFF198230FF16B05BFF48ECC2FF3CDD
      AFFF2EC987FF2CCC89FF22DB91FF16B15CFF198230FF1D1D1D1E030303040000
      000000000000000000000000000000000000000000000000000000000000858A
      88FFFFFFFFFFE8E9EAFFE7E9E9FFE6E8E8FFE5E7E8FFE4E6E7FFE2E5E6FFE2E5
      E5FFE1E4E4FFE0E2E3FF0057CEFF00D4F5FF39AFFCFF0074F5FF0057CEFFCCDE
      F5FF858A88FF000000000000000100000000666693D81918DCFF1A19C2FF1B1B
      D3FF06068AFF9A9AB4FFCCCCCEFF00005FFF0B0BA4FF1B1BCFFF1A1AC4FF1B1B
      CFFF0B0BA4FF00005FFFCCCCCEFFCCCCCEFFCCCCCEFFCCCCCEFF9A9AB4FF0606
      8AFF1B1BD4FF1A19C2FF1918DCFF666693D80000000000000000000000009C7B
      4CFFEEE9E1FFFFFFFFFFF7F4ECFFF6F2EFFFF5F2ECFFF7F4F0FFF9F5F3FFFAF4
      F3FFFAFAF3FFFAFDF5FFFBFAF9FFFCF7F6FFF7F5EDFFF4EDE9FFE9E0D4FFFFFF
      FFFFE2D3C4FF855713FF000000000000000008080809198634FF18B665FF48EB
      BEFF33DA9EFF49ECC1FF17B462FF198634FF00000000198634FF17B462FF4DED
      C5FF3EDEAEFF33D090FF31D392FF26E09AFF17B563FF198635FF1C1C1C1D0505
      050600000000000000000000000000000000000000000000000000000000858A
      88FFFFFFFFFFE9EBEBFFE8EAEAFFE7E9E9FFE6E8E9FFE6E8E8FFE5E7E7FFE3E5
      E6FFE2E5E5FFE2E4E5FFE0E3E4FF0057CEFF00D4F5FF39AFFCFF0074F5FF0057
      CEFF5074A1FF000000000000000100000000232377F51F1EECFF1B1BC4FF1E1E
      DEFF000070FFC2C2CCFFD1D1D3FFD1D1D3FF000065FF0C0CA7FF1D1DD4FF1C1C
      C9FF1D1DD4FF0C0CA7FF000065FFD1D1D3FFD1D1D3FFD1D1D3FFC2C2CCFF0000
      70FF1E1EDEFF1B1BC4FF1F1EECFF232377F5000000000000000000000000A086
      57FFEEE9E1FFFFFFFFFFFBFAF4FFF9F8F3FFF8F8EFFFFAF8F6FFFBF9FBFFFAF9
      F8FFFAFBF6FFFBFCFCFFF9F8F9FFF5F4EEFFF2EDE4FFEDE9E3FFE3DBCEFFF8F4
      F2FFDACAB6FF875915FF0000000000000000000100010909090A1A8D3BFF18B9
      6AFF51F4CCFF17B666FF188A38FF000000000000000000000000188A38FF17B6
      66FF52F0C8FF40E1AEFF38D899FF35DA9BFF2AE5A2FF17B767FF188A39FF1C1C
      1C1D04040405000000000000000000000000000000000000000000000000858A
      88FFFFFFFFFFEBECECFF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF858A88FF858A88FF858A88FF858A88FF0057CEFF00D4F5FF39AFFCFF0074
      F5FF0057CEFF75787B7D000000000000000023237CF52221F3FF1E1EC9FF2222
      E3FF010179FFCBCBD5FFDBDBDCFFDCDCDEFFDEDEDFFF000088FF2220BCFF3D3D
      E3FF3A3AD9FF3939E2FF1D1CB8FF00007AFFDADADCFFD8D8DAFFC9C9D2FF0000
      75FF2121E3FF1E1EC9FF2221F3FF23237CF5000000000000000000000000A58E
      63FFEEE9E1FFFFFFFFFFFCFFFCFFFAFCF6FFFAFCF4FFFAFAF9FFFAFAFDFFFAFA
      FDFFFAFAFDFFFCF7F9FFF5F5F2FFEEF1E7FFEFE5E0FFE7E4DBFFDED4C7FFEFE6
      E0FFD1BFA5FF885B18FF0000000000000000000000000001000102020203178D
      3CFF17B86BFF178D3CFF0000000000000000000000000000000000000000178D
      3CFF17B86BFF58F2CDFF46E6B4FF41E0A6FF3AE0A2FF2DE9A8FF17B96CFF178D
      3CFF1C1C1C1D020202030000000000000000000000000000000000000000858A
      88FFFFFFFFFFECEEEEFFEBECECFFEAECECFFE9EBEBFFE8EAEAFFE7E8E9FFE6E7
      E9FFE5E7E7FFE4E7E7FFE3E5E5FFE2E5E5FFE1E4E4FF0057CEFF00D4F5FF39AF
      FCFF0074F5FF0057CEFF75787B7D0000000066669BD8201FEAFF2121D2FF2322
      E5FF0A0998FFA9A9C6FFDFDFE0FFE1E1E2FFE3E3E4FFE4E4E5FF00008FFF2322
      BFFF3D3DE6FF3A3ADCFF3737E4FF1A18B7FF000077FFDEDEDFFFA8A8C4FF0808
      97FF2322E4FF2121D2FF201FEAFF66669BD8000000000000000000000000B194
      6CFFEEE9E1FFFFFFFFFFFCFCFBFFFAFAF5FFFAFAFBFFFAFAFBFFFAFAFAFFFAFA
      FBFFFCFCFAFFF7F5EBFFF2EFE5FFEEEAE3FFE9E2D9FFE4DDD1FFDCCDBDFFE3DB
      CCFFC7B695FF8A5C1BFF00000000000000000000000000000000000000000101
      0102169140FF0000000000000000000000000000000000000000000000000000
      0000169140FF17BB6EFF5DF5D0FF4BEBBBFF44E5ACFF3DE5A7FF30EDAEFF17BD
      70FF169140FF1C1C1C1D0303030400000000000000000000000000000000858A
      88FFFFFFFFFFEDEEEFFFECEEEDFFECECEDFFEAEBECFFEAEBEBFFE8EAEAFFE8E9
      E9FFE6E8E9FFE6E7E7FFE5E6E7FFE3E6E6FFE8EAEBFFDCDFE1FF0057CEFF00D4
      F5FF39AFFCFF0074F5FF0057CEFF00000000878799AE1D1BD5FF2423DCFF2424
      E2FF1514BCFF6E6EAFFFE3E3E4FFE4E4E5FFE5E5E5FFE5E5E6FFE6E6E6FF0000
      84FF1918B7FF2D2DE6FF2A2AD9FF2828E5FF1110B1FF000075FF6E6EAFFF1312
      BCFF2424E0FF2423DCFF1D1BD5FF878799AE000000000000000000000000B89E
      73FFEEE9E1FFFFFFFFFFFCFCFCFFFAFAFAFFFAFAFAFFFAFAFBFFFAFBFCFFFAFC
      F9FFF8F9F5FFF7F2E7FFF1EDE3FFECE8E0FFEAE0D7FFE5D8CFFFDAC8B7FFDED2
      C1FFC1AE8FFF8B601EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000159445FF17BC73FF60F6D4FF4FEEBEFF48E9B1FF41E9ADFF33F0
      B3FF17BE75FF159445FF1C1C1C1D05050506000000000000000000000000858A
      88FFFFFFFFFFEFEFEFFF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FFBABDBEFF0057
      CEFF00D4F5FF39AFFCFF0057CEFF00000000717174781716BCFF2A2AEEFF2726
      DFFF2221E5FF333398FDC4C4D9FFEAEAEBFFEAEAEBFFEAEAEBFFEAEAEBFFEAEA
      EBFF000080FF1211B4FF2827E9FF2626DDFF2727E4FF2524E7FF1313BAFF2323
      DEFF2626DDFF2A2AEEFF1716BCFF71717478000000000000000000000000BBA4
      7BFFEEE9E1FFFFFFFFFFF9FCFCFFFAFAFAFFFAFAFAFFFAFBFCFFFAFCF9FFF8F9
      F0FFF5F1EBFFF0EEE5FFEBE3DAFFC5B395FFC5B395FFC4A688FFBEA57AFFBEA5
      7AFFA48046FF8E6325FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000149748FF17BF77FF65F8D7FF52F0C2FF4CEDB7FF44ED
      B3FF35F2B8FF17C179FF149748FF1C1C1C1D000000000000000000000000858A
      88FFFFFFFFFFF0F0F1FFEFF0F0FFEEEFEFFFEDEEEEFFECEDEEFFECEDEDFFEBEB
      ECFFE9EAEBFFE8EAEAFFE7E9E9FFD6D7D7FFCFD2D3FFC1C3C3FFAFB1B1FFFFFF
      FFFF0057CEFF0057CEFF5A5A5B5C0000000037373738363697EF2F2DF7FF2B2A
      E7FF2B2AF3FF1D1BCBFF5E5EB1FFE4E4EBFFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FF000085FF1212B7FF2929E8FF2827DBFF2827DBFF2828DEFF2828
      DCFF2D2DE6FF2D2BF7FF363697EF37373738000000000000000000000000BCA6
      82FFEEE9E1FFFFFFFFFFF7FCFCFFFAFAFAFFFAFBFBFFFAFCFAFFF8F9F1FFF4F1
      E6FFF1EBE2FFEEEAE4FFE0D4C3FFBDA176FFFFFFFFFFF3F1F0FFF2EEE4FFDAD3
      C6FFB89D72FF906628FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000139B4CFF17C17BFF69FADDFF51F3C3FF4DF1
      BBFF42F2B9FF2AF8C1FF17C380FF139B4CFF000000000000000000000000858A
      88FFFFFFFFFFF2F2F2FFF1F1F1FFF0F0F0FFEEEFF0FFEDEEEEFFEDEEEEFFECED
      EDFFEAEBECFFE9EBEBFFE8EAEBFFCBCCCCFFB6B7B9FF818383FF818384FFFFFF
      FFFF858A88FF0000000000000000000000000000000084848F982220D2FF3A39
      F9FF2F2EEBFF2E2DFFFF1917C1FF6161B6FFCFCFE5FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FF00008AFF2928F0FF2A29E0FF2929DCFF2929DCFF3534
      E6FF3232F8FF201ED0FF84848F9800000000000000000000000000000000BCA5
      84FFEEE9E1FFFFFFFFFFF9FCFCFFFAFAFBFFFCFCFCFFF8F9F4FFF3F0EAFFEFE9
      E0FFEEE3DAFFEDE3DAFFD1C1A9FFBDA176FFFFFFFFFFF2EEE4FFDCCEBDFFB89D
      72FF9E793FFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000129D50FF17C382FF6DFCDDFF4CF6
      C3FF48FACBFF17C584FF129D50FF00000000000000000000000000000000858A
      88FFFFFFFFFFF3F3F3FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF858A88FF858A88FFEAECECFF9B9C9BFF858A88FF858A88FF858A88FF858A
      88FF858A88FF000000000000000000000000000000003C3C3C3D6868A6D83331
      EFFF4E4DF8FF3C3CF2FF302FFFFF1F1ED0FF3737A7FD8080C6FFBEBEE1FFEAEA
      F4FFEAEAF4FFBEBEE1FF8080C6FF1716C7FF2C2CE6FF2F2FE2FF4747EFFF4141
      F6FF2B29ECFF6868A6D83C3C3C3D00000000000000000000000000000000BEA8
      86FFEEE9E1FFFFFFFFFFFCFCFCFFFAFBFCFFFDFBF6FFF5F3EEFFEBE8E5FFE8DF
      D8FFE7D7CCFFE2D4C6FFCEB89EFFAC9465FFF2EEE4FFEEE8E1FFB49868FF9E79
      3FFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000012A053FF17C584FF63FC
      DEFF18C98AFF12A053FF0000000000000000000000000000000000000000858A
      88FFFFFFFFFFF3F3F3FFF3F3F3FFF2F3F2FFF1F2F1FFF0F1F0FFF0F0F0FFEEEF
      EFFFEDEEEFFFEDEEEDFFEBECECFFA3A4A4FFF0F0F0FFFFFFFFFFF4F4F4FFFFFF
      FFFF858A88FF00000000000000000000000000000000000000006666686A1A1A
      9BF84240F7FF7170FDFF6E6EFBFF4A48FFFF322FECFF1C1AC9FF0E0DAEFF0302
      9BFF03029BFF0D0CAEFF1B1ACDFF3838F3FF5B5BF6FF7572FAFF5959FAFF3332
      F3FF1A1A9BF86666686A0000000000000000000000000000000000000000BEAB
      89FFEEE9E1FFFFFFFFFFFAFAFCFFF6FAF3FFF9F0E9FFF4E8E0FFE8E2D8FFE3DB
      D0FFDED0BDFFDCCEB8FFCAB28FFFAC9465FFD8D0C1FFB5996DFF9E793FFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000016A55BFF16C6
      86FF11A256FF000000000000000000000000000000000000000000000000858A
      88FFFFFFFFFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF1F1F1FFF0F0
      F0FFEFF0F0FFEEEEEFFFEDEEEEFFAEAFAFFFE9E9E9FFFFFFFFFFFFFFFFFF858A
      88FF252525260000000000000000000000000000000000000000000000007272
      76791A1A9DF83D39F1FF8786FFFFAFAFFFFFA3A0FEFF8D8DFFFF807AFFFF7675
      FFFF7978FFFF8786FFFF9996FEFFA9A9FEFFA39FFEFF5756FFFF302EEDFF1A1A
      9DF872727679000000000000000000000000000000000000000000000000BEAB
      89FFEEE9E1FFFFFFFFFFFFFFFFFFFEFFFEFFF8F5F4FFF5EDE7FFECE4D9FFE0D7
      CBFFDACCB4FFD7C4AFFFC3AD86FF99793FFFBCA179FF9E793FFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000010A4
      58FF00000000000000000000000000000000000000000000000000000000858A
      88FFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCDFF858A88FF2A2A
      2A2B010101020000000000000000000000000000000000000000000000000000
      00006666686A6868ACD82725D9FF504EFBFF9B98FFFFC0C0FFFFD3D3FFFFD8D4
      FFFFD8D4FFFFC8C8FFFFAEAEFFFF6E6BFFFF4140FBFF2523D7FF6868ACD86666
      686A00000000000000000000000000000000000000000000000000000000C0AE
      8CFFEEE9E1FFEEE9E1FFF1EEE6FFECE3DCFFE2DBCEFFDED3C2FFD9CCB7FFCEC1
      A5FFCBB494FFC5AC8BFFAC9465FF99793FFF9A7038FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      6466858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF2F2F2F300000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003C3C3C3D848490983636A8EF1E1DCCFF2A28E1FF3130F0FF3736
      FBFF3736FBFF3130F0FF2A28E1FF1E1DCCFF3636A8EF848490983C3C3C3D0000
      000000000000000000000000000000000000000000000000000000000000C0AE
      8CFFC1AC8BFFBFA987FFBEA886FFBFA986FFBFA988FFC0AA89FFC0AB8BFFBEA2
      79FFBEA47CFFB59D6DFFA78D5AFF9A7038FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000373737387171757887879FAE6868AED82424
      A7F52424A7F56868AED887879FAE717175783737373800000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000300000000100010000000000400200000000000000000000
      000000000000000000000000FFFFFF00FC003FFFFFFFC0007F000000F0000F80
      000180003F000000E0000780000180003F000000E00007800001800000000000
      E00007800001C00000000000E00007800003FE0000000000E00007800007FF00
      00000000E0000380000FFF0000000000C00007C0000F000000000000C00003C0
      000F000000000000C00003C0000F000000000000C00003C0000F000000000000
      C00003C0000F000000000000C00003C0000F000000000000C00003C0000F0000
      00000000C00003C0000F000000000000800001C0000F000000000000800001C0
      000FFF0000000000800001C0000FFF0000000000800001C0000FFF0000000000
      800001C0000FFF2000000000C00001C0000FFFE000000000F00007C0003FFFE0
      00000000FE007FFFFFFFFFE000000000E00003FFFFFFFFFFFFFE007FE00003FF
      FFFFC00001F8001FE00003FC1FFFC00001F0000FE00003F80FFFC00001E00007
      E00003F007FFC00001C00003E00003E003FFC00001800001E00003C001FFC000
      03800001E000038000FFC00003000000E0000300007FE00007000000E0000300
      003FE00003000000E0000300001FE00005000000E0000300800FE00005000000
      E0000301C007E00003000000E0000383E003E00001000000E00003E7F001E000
      01000000E00003FFF800E00001000000E00003FFFC00E00001000000E00003FF
      FE00E00007800001E00007FFFF01E00007800001E0000FFFFF83E00007C00003
      E0001FFFFFC7E00007E00007E0003FFFFFEFE00007F0000FE0007FFFFFFFE000
      1FF8001FE000FFFFFFFFFFFFFFFE007F00000000000000000000000000000000
      000000000000}
  end
  object IBStoredProc1: TIBStoredProc
    Left = 65256
    Top = 128
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 394
    Top = 263
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
  object OpenXml: TOpenDialog
    OnShow = OpenXmlShow
    DefaultExt = '*-nfe.XML;*-nfse.xml'
    FileName = 'Selecione o arquivo XML'
    Filter = 
      'Arquivos NFe/NFSe|*-nfe.xml;*-nfse.xml|Arquivos XML|*.xml|Todos ' +
      'os Arquivos|*.*'
    FilterIndex = 2
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 366
    Top = 235
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 394
    Top = 319
    PixelsPerInch = 96
    object cxStyleLetraPreta: TcxStyle
    end
  end
  object SaveXml: TSaveDialog
    Filter = 'Arquivo XML|*.xml|Todos|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 422
    Top = 263
  end
  object frxNotaFiscal: TfrxDBDataset
    UserName = 'NotaFiscal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODEMPRESA=CODEMPRESA'
      'CODVENDA=CODVENDA'
      'NF_DT_EMISSAO=NF_DT_EMISSAO'
      'NF_NATUREZA_OPERACAO=NF_NATUREZA_OPERACAO'
      'NF_NUMERO=NF_NUMERO'
      'NF_CHAVE=NF_CHAVE'
      'NF_PROTOCOLO=NF_PROTOCOLO'
      'NF_AMBIENTE=NF_AMBIENTE'
      'ARQUIVO_XML=ARQUIVO_XML'
      'NF_PROTOCOLO_CANCELAMENTO=NF_PROTOCOLO_CANCELAMENTO'
      'NF_DT_CANCELAMENTO=NF_DT_CANCELAMENTO'
      'NF_CSTAT=NF_CSTAT'
      'MOTIVO_CANCELAMENTO=MOTIVO_CANCELAMENTO'
      'NF_PROTOCOLO_CARTA_CORRECAO=NF_PROTOCOLO_CARTA_CORRECAO'
      'NF_MOTIVO_STATUS=NF_MOTIVO_STATUS'
      'TIPO=TIPO'
      'NF_RAZAOSOCIAL=NF_RAZAOSOCIAL'
      'NF_TIPO=NF_TIPO'
      'NF_SITUACAO=NF_SITUACAO'
      'Ambiente=Ambiente'
      'NF_SEQUENCIA_EVENTO=NF_SEQUENCIA_EVENTO')
    DataSet = NotaFiscalXML
    BCDToCurrency = False
    Left = 422
    Top = 291
  end
  object NotaFiscalXML_Evento: TIBDataSet
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    BeforeOpen = NotaFiscalXML_EventoBeforeOpen
    OnCalcFields = NotaFiscalXML_EventoCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NOTA_FISCAL'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into NOTA_FISCAL'
      
        '  (CODIGO, CODEMPRESA, CODVENDA, NF_DT_EMISSAO, NF_NATUREZA_OPER' +
        'ACAO, NF_NUMERO, '
      
        '   NF_CHAVE, NF_PROTOCOLO, NF_AMBIENTE, ARQUIVO_XML, NF_DT_CANCE' +
        'LAMENTO, '
      
        '   NF_CSTAT, MOTIVO_CANCELAMENTO, NF_MOTIVO_STATUS, TIPO, NF_RAZ' +
        'AOSOCIAL, '
      
        '   NF_SITUACAO, NF_TIPO, NF_SEQUENCIA_EVENTO, NF_DIGEST_VALUE, S' +
        'TATUS, '
      
        '   NF_CNPJCPF_DESTINO, NF_DT_INUTILIZACAO, NF_NUM_INICIAL_INUTIL' +
        'IZACAO, '
      
        '   NF_NUM_FINAL_INUTILIZACAO, MOTIVO_INUTILIZACAO, SERIE, ARQUIV' +
        'O_RPS, '
      '   NF_MODELO, NF_CNPJ)'
      'values'
      
        '  (:CODIGO, :CODEMPRESA, :CODVENDA, :NF_DT_EMISSAO, :NF_NATUREZA' +
        '_OPERACAO, '
      
        '   :NF_NUMERO, :NF_CHAVE, :NF_PROTOCOLO, :NF_AMBIENTE, :ARQUIVO_' +
        'XML, :NF_DT_CANCELAMENTO, '
      
        '   :NF_CSTAT, :MOTIVO_CANCELAMENTO, :NF_MOTIVO_STATUS, :TIPO, :N' +
        'F_RAZAOSOCIAL, '
      
        '   :NF_SITUACAO, :NF_TIPO, :NF_SEQUENCIA_EVENTO, :NF_DIGEST_VALU' +
        'E, :STATUS, '
      
        '   :NF_CNPJCPF_DESTINO, :NF_DT_INUTILIZACAO, :NF_NUM_INICIAL_INU' +
        'TILIZACAO, '
      
        '   :NF_NUM_FINAL_INUTILIZACAO, :MOTIVO_INUTILIZACAO, :SERIE, :AR' +
        'QUIVO_RPS, '
      '   :NF_MODELO, :NF_CNPJ)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  CODEMPRESA,'
      '  CODVENDA,'
      '  NF_DT_EMISSAO,'
      '  NF_NATUREZA_OPERACAO,'
      '  NF_NUMERO,'
      '  NF_CHAVE,'
      '  NF_PROTOCOLO,'
      '  NF_AMBIENTE,'
      '  ARQUIVO_XML,'
      '  NF_DT_CANCELAMENTO,'
      '  NF_CSTAT,'
      '  MOTIVO_CANCELAMENTO,'
      '  NF_MOTIVO_STATUS,'
      '  TIPO,'
      '  NF_RAZAOSOCIAL,'
      '  NF_SITUACAO,'
      '  NF_TIPO,'
      '  NF_SEQUENCIA_EVENTO,'
      '  NF_DIGEST_VALUE,'
      '  STATUS,'
      '  NF_CNPJCPF_DESTINO,'
      '  NF_DT_INUTILIZACAO,'
      '  NF_NUM_INICIAL_INUTILIZACAO,'
      '  NF_NUM_FINAL_INUTILIZACAO,'
      '  MOTIVO_INUTILIZACAO,'
      '  SERIE,'
      '  ARQUIVO_RPS,'
      '  NF_MODELO,'
      '  NF_CNPJ'
      'from NOTA_FISCAL '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select *'
      'from NOTA_FISCAL'
      'where (TIPO in ('#39'CCe'#39', '#39'NFeCancel'#39', '#39'NFSeCancel'#39'))  '
      '      and (NF_CHAVE = :NF_CHAVE)')
    ModifySQL.Strings = (
      'update NOTA_FISCAL'
      'set'
      '  CODIGO = :CODIGO,'
      '  CODEMPRESA = :CODEMPRESA,'
      '  CODVENDA = :CODVENDA,'
      '  NF_DT_EMISSAO = :NF_DT_EMISSAO,'
      '  NF_NATUREZA_OPERACAO = :NF_NATUREZA_OPERACAO,'
      '  NF_NUMERO = :NF_NUMERO,'
      '  NF_CHAVE = :NF_CHAVE,'
      '  NF_PROTOCOLO = :NF_PROTOCOLO,'
      '  NF_AMBIENTE = :NF_AMBIENTE,'
      '  ARQUIVO_XML = :ARQUIVO_XML,'
      '  NF_DT_CANCELAMENTO = :NF_DT_CANCELAMENTO,'
      '  NF_CSTAT = :NF_CSTAT,'
      '  MOTIVO_CANCELAMENTO = :MOTIVO_CANCELAMENTO,'
      '  NF_MOTIVO_STATUS = :NF_MOTIVO_STATUS,'
      '  TIPO = :TIPO,'
      '  NF_RAZAOSOCIAL = :NF_RAZAOSOCIAL,'
      '  NF_SITUACAO = :NF_SITUACAO,'
      '  NF_TIPO = :NF_TIPO,'
      '  NF_SEQUENCIA_EVENTO = :NF_SEQUENCIA_EVENTO,'
      '  NF_DIGEST_VALUE = :NF_DIGEST_VALUE,'
      '  STATUS = :STATUS,'
      '  NF_CNPJCPF_DESTINO = :NF_CNPJCPF_DESTINO,'
      '  NF_DT_INUTILIZACAO = :NF_DT_INUTILIZACAO,'
      '  NF_NUM_INICIAL_INUTILIZACAO = :NF_NUM_INICIAL_INUTILIZACAO,'
      '  NF_NUM_FINAL_INUTILIZACAO = :NF_NUM_FINAL_INUTILIZACAO,'
      '  MOTIVO_INUTILIZACAO = :MOTIVO_INUTILIZACAO,'
      '  SERIE = :SERIE,'
      '  ARQUIVO_RPS = :ARQUIVO_RPS,'
      '  NF_MODELO = :NF_MODELO,'
      '  NF_CNPJ = :NF_CNPJ'
      'where'
      '  CODIGO = :OLD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    DataSource = DS
    Left = 310
    Top = 263
    object NotaFiscalXML_EventoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"NOTA_FISCAL"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object NotaFiscalXML_EventoCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
      Origin = '"NOTA_FISCAL"."CODEMPRESA"'
      Required = True
    end
    object NotaFiscalXML_EventoCODVENDA: TIBStringField
      FieldName = 'CODVENDA'
      Origin = '"NOTA_FISCAL"."CODVENDA"'
      Required = True
      Size = 10
    end
    object NotaFiscalXML_EventoNF_DT_EMISSAO: TDateTimeField
      FieldName = 'NF_DT_EMISSAO'
      Origin = '"NOTA_FISCAL"."NF_DT_EMISSAO"'
    end
    object NotaFiscalXML_EventoNF_NATUREZA_OPERACAO: TIBStringField
      FieldName = 'NF_NATUREZA_OPERACAO'
      Origin = '"NOTA_FISCAL"."NF_NATUREZA_OPERACAO"'
      Size = 60
    end
    object NotaFiscalXML_EventoNF_NUMERO: TLargeintField
      FieldName = 'NF_NUMERO'
      Origin = '"NOTA_FISCAL"."NF_NUMERO"'
    end
    object NotaFiscalXML_EventoNF_CHAVE: TIBStringField
      FieldName = 'NF_CHAVE'
      Origin = '"NOTA_FISCAL"."NF_CHAVE"'
      Size = 44
    end
    object NotaFiscalXML_EventoNF_AMBIENTE: TIntegerField
      FieldName = 'NF_AMBIENTE'
      Origin = '"NOTA_FISCAL"."NF_AMBIENTE"'
    end
    object NotaFiscalXML_EventoARQUIVO_XML: TBlobField
      FieldName = 'ARQUIVO_XML'
      Origin = '"NOTA_FISCAL"."ARQUIVO_XML"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object NotaFiscalXML_EventoNF_DT_CANCELAMENTO: TDateTimeField
      FieldName = 'NF_DT_CANCELAMENTO'
      Origin = '"NOTA_FISCAL"."NF_DT_CANCELAMENTO"'
    end
    object NotaFiscalXML_EventoNF_CSTAT: TIntegerField
      FieldName = 'NF_CSTAT'
      Origin = '"NOTA_FISCAL"."NF_CSTAT"'
    end
    object NotaFiscalXML_EventoMOTIVO_CANCELAMENTO: TWideMemoField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Origin = '"NOTA_FISCAL"."MOTIVO_CANCELAMENTO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object NotaFiscalXML_EventoNF_MOTIVO_STATUS: TWideMemoField
      FieldName = 'NF_MOTIVO_STATUS'
      Origin = '"NOTA_FISCAL"."NF_MOTIVO_STATUS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object NotaFiscalXML_EventoTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"NOTA_FISCAL"."TIPO"'
      Size = 15
    end
    object NotaFiscalXML_EventoNF_RAZAOSOCIAL: TIBStringField
      FieldName = 'NF_RAZAOSOCIAL'
      Origin = '"NOTA_FISCAL"."NF_RAZAOSOCIAL"'
      Size = 60
    end
    object NotaFiscalXML_EventoNF_TIPO: TIntegerField
      FieldName = 'NF_TIPO'
      Origin = '"NOTA_FISCAL"."NF_TIPO"'
    end
    object NotaFiscalXML_EventoNF_SITUACAO: TIBStringField
      FieldName = 'NF_SITUACAO'
      Origin = '"NOTA_FISCAL"."NF_SITUACAO"'
      Size = 15
    end
    object NotaFiscalXML_EventoAmbiente: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ambiente'
      Calculated = True
    end
    object NotaFiscalXML_EventoNF_CNPJCPF_DESTINO: TIBStringField
      FieldName = 'NF_CNPJCPF_DESTINO'
      Origin = '"NOTA_FISCAL"."NF_CNPJCPF_DESTINO"'
      Size = 18
    end
    object NotaFiscalXML_EventoNF_PROTOCOLO: TIBStringField
      DisplayWidth = 50
      FieldName = 'NF_PROTOCOLO'
      Origin = '"NOTA_FISCAL"."NF_PROTOCOLO"'
      Size = 50
    end
    object NotaFiscalXML_EventoNF_SEQUENCIA_EVENTO: TIntegerField
      FieldName = 'NF_SEQUENCIA_EVENTO'
      Origin = '"NOTA_FISCAL"."NF_SEQUENCIA_EVENTO"'
    end
    object NotaFiscalXML_EventoNF_DIGEST_VALUE: TIBStringField
      FieldName = 'NF_DIGEST_VALUE'
      Origin = '"NOTA_FISCAL"."NF_DIGEST_VALUE"'
      Size = 28
    end
    object NotaFiscalXML_EventoSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"NOTA_FISCAL"."STATUS"'
    end
    object NotaFiscalXML_EventoNF_DT_INUTILIZACAO: TDateTimeField
      FieldName = 'NF_DT_INUTILIZACAO'
      Origin = '"NOTA_FISCAL"."NF_DT_INUTILIZACAO"'
    end
    object NotaFiscalXML_EventoNF_NUM_INICIAL_INUTILIZACAO: TIntegerField
      FieldName = 'NF_NUM_INICIAL_INUTILIZACAO'
      Origin = '"NOTA_FISCAL"."NF_NUM_INICIAL_INUTILIZACAO"'
    end
    object NotaFiscalXML_EventoNF_NUM_FINAL_INUTILIZACAO: TIntegerField
      FieldName = 'NF_NUM_FINAL_INUTILIZACAO'
      Origin = '"NOTA_FISCAL"."NF_NUM_FINAL_INUTILIZACAO"'
    end
    object NotaFiscalXML_EventoMOTIVO_INUTILIZACAO: TWideMemoField
      FieldName = 'MOTIVO_INUTILIZACAO'
      Origin = '"NOTA_FISCAL"."MOTIVO_INUTILIZACAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object NotaFiscalXML_EventoSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"NOTA_FISCAL"."SERIE"'
      Size = 15
    end
    object NotaFiscalXML_EventoARQUIVO_RPS: TIntegerField
      FieldName = 'ARQUIVO_RPS'
      Origin = '"NOTA_FISCAL"."ARQUIVO_RPS"'
    end
    object NotaFiscalXML_EventoNF_MODELO: TIntegerField
      FieldName = 'NF_MODELO'
      Origin = '"NOTA_FISCAL"."NF_MODELO"'
    end
    object NotaFiscalXML_EventoNF_CNPJ: TIBStringField
      FieldName = 'NF_CNPJ'
      Origin = '"NOTA_FISCAL"."NF_CNPJ"'
      Size = 18
    end
    object NotaFiscalXML_EventoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object NotaFiscalXML_EventoNF_VPIS: TFloatField
      FieldName = 'NF_PIS_VPIS'
    end
    object NotaFiscalXML_EventoNF_VCOFINS: TFloatField
      FieldName = 'NF_COFINS_VCOFINS'
    end
    object NotaFiscalXML_EventoNF_VST: TFloatField
      FieldName = 'NF_VICMSST'
    end
  end
  object DSEvento: TDataSource
    DataSet = NotaFiscalXML_Evento
    OnDataChange = DSEventoDataChange
    Left = 338
    Top = 263
  end
  object PopupMenuNFe: TPopupMenu
    OnPopup = PopupMenuNFePopup
    Left = 366
    Top = 291
    object VisualizarDANFe1: TMenuItem
      Caption = 'Visualizar DANFe'
      OnClick = Visualizar1Click
    end
    object VizualizarXML2: TMenuItem
      Caption = 'Visualizar XML'
      OnClick = VizualizarXML1Click
    end
    object VincularVenda1: TMenuItem
      Caption = 'Vincular Venda'
      OnClick = VincularVenda1Click
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object S1: TMenuItem
      Caption = 'Salvar em PDF'
      OnClick = S1Click
    end
    object ExportarXML2: TMenuItem
      Caption = 'Exportar XML'
      OnClick = ExportarXML1Click
    end
    object Deletar1: TMenuItem
      Caption = 'Deletar'
      OnClick = Deletar1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object CancelamentodaNFe2: TMenuItem
      Caption = 'Cancelar Nota'
      OnClick = CancelamentodaNFe2Click
    end
    object CartadeCorreo2: TMenuItem
      Caption = 'Carta de Corre'#231#227'o'
      OnClick = CartadeCorreo1Click
    end
    object ConsultarNaSEFAZ1: TMenuItem
      Caption = 'Consultar na SEFAZ'
      OnClick = ConsultarNaSEFAZ1Click
    end
    object ConsultarNFSe1: TMenuItem
      Caption = 'Consultar NFSe'
      object ConsultaLteNFSe1: TMenuItem
        Caption = 'Consulta Lote NFSe'
        OnClick = ConsultaLteNFSe1Click
      end
      object ConsultarporRPS1: TMenuItem
        Caption = 'Consultar por RPS'
        OnClick = ConsultarporRPS1Click
      end
      object ConsultaNFe1: TMenuItem
        Caption = 'Consulta Geral NFSe'
        OnClick = ConsultaNFe1Click
      end
      object ConsultarSituao1: TMenuItem
        Caption = 'Consultar Situa'#231#227'o'
        OnClick = ConsultarSituao1Click
      end
    end
    object Outros2: TMenuItem
      Caption = 'Outros'
      object Omitirnotasnoautorizadas1: TMenuItem
        Caption = 'Omitir notas n'#227'o autorizadas'
        OnClick = Omitirnotasnoautorizadas1Click
      end
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object EnviarEmail1: TMenuItem
      Caption = 'Enviar por Email'
      OnClick = EnviarEmail4Click
    end
  end
  object SaveZip: TSaveDialog
    DefaultExt = '.zip'
    Filter = 'Arquivo Compactado|*.zip'
    Left = 422
    Top = 319
  end
  object MenuEventos: TPopupMenu
    Left = 394
    Top = 291
    object V1: TMenuItem
      Caption = 'Visualizar Evento'
      OnClick = V1Click
    end
    object S2: TMenuItem
      Caption = 'Visualizar XML'
      OnClick = S2Click
    end
    object S3: TMenuItem
      Caption = 'Salvar em PDF'
      OnClick = S3Click
    end
    object ExportarXML_Evento: TMenuItem
      Caption = 'Exportar XML'
      OnClick = ExportarXML_EventoClick
    end
    object EnviarporEmail1: TMenuItem
      Caption = 'Enviar por Email'
      OnClick = EnviarporEmail1Click
    end
  end
  object NotaFiscalXML_Inutilizacao: TIBDataSet
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    BeforeOpen = NotaFiscalXML_InutilizacaoBeforeOpen
    OnCalcFields = NotaFiscalXML_InutilizacaoCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NOTA_FISCAL'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into NOTA_FISCAL'
      
        '  (ARQUIVO_XML, CODEMPRESA, CODIGO, CODVENDA, MOTIVO_CANCELAMENT' +
        'O, NF_AMBIENTE, '
      
        '   NF_CHAVE, NF_CNPJCPF_DESTINO, NF_CSTAT, NF_DT_CANCELAMENTO, N' +
        'F_DT_EMISSAO, '
      
        '   NF_MOTIVO_STATUS, NF_NATUREZA_OPERACAO, NF_NUMERO, NF_PROTOCO' +
        'LO, NF_PROTOCOLO_CANCELAMENTO, '
      
        '   NF_PROTOCOLO_CARTA_CORRECAO, NF_RAZAOSOCIAL, NF_SEQUENCIA_EVE' +
        'NTO, '
      '   NF_SITUACAO, NF_TIPO, TIPO)'
      'values'
      
        '  (:ARQUIVO_XML, :CODEMPRESA, :CODIGO, :CODVENDA, :MOTIVO_CANCEL' +
        'AMENTO, '
      
        '   :NF_AMBIENTE, :NF_CHAVE, :NF_CNPJCPF_DESTINO, :NF_CSTAT, :NF_' +
        'DT_CANCELAMENTO, '
      
        '   :NF_DT_EMISSAO, :NF_MOTIVO_STATUS, :NF_NATUREZA_OPERACAO, :NF' +
        '_NUMERO, '
      
        '   :NF_PROTOCOLO, :NF_PROTOCOLO_CANCELAMENTO, :NF_PROTOCOLO_CART' +
        'A_CORRECAO, '
      
        '   :NF_RAZAOSOCIAL, :NF_SEQUENCIA_EVENTO, :NF_SITUACAO, :NF_TIPO' +
        ', :TIPO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  CODEMPRESA,'
      '  CODVENDA,'
      '  NF_DT_EMISSAO,'
      '  NF_NATUREZA_OPERACAO,'
      '  NF_NUMERO,'
      '  NF_CHAVE,'
      '  NF_PROTOCOLO,'
      '  NF_AMBIENTE,'
      '  ARQUIVO_XML,'
      '  NF_PROTOCOLO_CANCELAMENTO,'
      '  NF_DT_CANCELAMENTO,'
      '  NF_CSTAT,'
      '  MOTIVO_CANCELAMENTO,'
      '  NF_PROTOCOLO_CARTA_CORRECAO,'
      '  NF_MOTIVO_STATUS,'
      '  TIPO,'
      '  NF_RAZAOSOCIAL,'
      '  NF_TIPO,'
      '  NF_SITUACAO,'
      '  NF_SEQUENCIA_EVENTO,'
      '  NF_CNPJCPF_DESTINO'
      'from NOTA_FISCAL '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CODIGO, NF_PROTOCOLO, NF_DT_INUTILIZACAO,'
      
        '       NF_NUM_INICIAL_INUTILIZACAO, NF_NUM_FINAL_INUTILIZACAO, N' +
        'F_AMBIENTE'
      'from NOTA_FISCAL NF'
      'where (NF.TIPO = '#39'NFeInut'#39')')
    ModifySQL.Strings = (
      'update NOTA_FISCAL'
      'set'
      '  ARQUIVO_XML = :ARQUIVO_XML,'
      '  CODEMPRESA = :CODEMPRESA,'
      '  CODIGO = :CODIGO,'
      '  CODVENDA = :CODVENDA,'
      '  MOTIVO_CANCELAMENTO = :MOTIVO_CANCELAMENTO,'
      '  NF_AMBIENTE = :NF_AMBIENTE,'
      '  NF_CHAVE = :NF_CHAVE,'
      '  NF_CNPJCPF_DESTINO = :NF_CNPJCPF_DESTINO,'
      '  NF_CSTAT = :NF_CSTAT,'
      '  NF_DT_CANCELAMENTO = :NF_DT_CANCELAMENTO,'
      '  NF_DT_EMISSAO = :NF_DT_EMISSAO,'
      '  NF_MOTIVO_STATUS = :NF_MOTIVO_STATUS,'
      '  NF_NATUREZA_OPERACAO = :NF_NATUREZA_OPERACAO,'
      '  NF_NUMERO = :NF_NUMERO,'
      '  NF_PROTOCOLO = :NF_PROTOCOLO,'
      '  NF_PROTOCOLO_CANCELAMENTO = :NF_PROTOCOLO_CANCELAMENTO,'
      '  NF_PROTOCOLO_CARTA_CORRECAO = :NF_PROTOCOLO_CARTA_CORRECAO,'
      '  NF_RAZAOSOCIAL = :NF_RAZAOSOCIAL,'
      '  NF_SEQUENCIA_EVENTO = :NF_SEQUENCIA_EVENTO,'
      '  NF_SITUACAO = :NF_SITUACAO,'
      '  NF_TIPO = :NF_TIPO,'
      '  TIPO = :TIPO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 478
    Top = 311
    object NotaFiscalXML_InutilizacaoAmbiente: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ambiente'
      Calculated = True
    end
    object NotaFiscalXML_InutilizacaoNF_DT_INUTILIZACAO: TDateTimeField
      FieldName = 'NF_DT_INUTILIZACAO'
      Origin = '"NOTA_FISCAL"."NF_DT_INUTILIZACAO"'
    end
    object NotaFiscalXML_InutilizacaoNF_NUM_INICIAL_INUTILIZACAO: TIntegerField
      FieldName = 'NF_NUM_INICIAL_INUTILIZACAO'
      Origin = '"NOTA_FISCAL"."NF_NUM_INICIAL_INUTILIZACAO"'
    end
    object NotaFiscalXML_InutilizacaoNF_NUM_FINAL_INUTILIZACAO: TIntegerField
      FieldName = 'NF_NUM_FINAL_INUTILIZACAO'
      Origin = '"NOTA_FISCAL"."NF_NUM_FINAL_INUTILIZACAO"'
    end
    object NotaFiscalXML_InutilizacaoNF_AMBIENTE: TIntegerField
      FieldName = 'NF_AMBIENTE'
      Origin = '"NOTA_FISCAL"."NF_AMBIENTE"'
    end
    object NotaFiscalXML_InutilizacaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"NOTA_FISCAL"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object NotaFiscalXML_InutilizacaoNF_PROTOCOLO: TIBStringField
      FieldName = 'NF_PROTOCOLO'
      Origin = '"NOTA_FISCAL"."NF_PROTOCOLO"'
      Size = 50
    end
  end
  object DSInutilizacao: TDataSource
    DataSet = NotaFiscalXML_Inutilizacao
    OnDataChange = DSEventoDataChange
    Left = 506
    Top = 311
  end
  object UCControls1: TUCControls
    GroupName = 'Nota Fiscal'
    UserControl = FrmPrincipal.UserControl
    Components = ''
    MostraMessagemErroValidacao = False
    Left = 394
    Top = 235
  end
  object ActionList1: TActionList
    Left = 422
    Top = 235
    object ActVisualizarDANFeSemValidacao: TAction
      Caption = 'Visualizar DANFe Sem Valida'#231#245'es'
    end
  end
  object WREventosCadastro1: TWREventosCadastro
    OnPreencheVariaveisImpressaoPersonalizada = WREventosCadastro1PreencheVariaveisImpressaoPersonalizada
    OnImpressaoBeforePrint = WREventosCadastro1ImpressaoBeforePrint
    OnImpressaoAfterPrint = WREventosCadastro1ImpressaoAfterPrint
    Versao_Configuracao = 1
    Empresa = 0
    ValidaPadraoDatela = True
    UsaCadastroPocket = False
    UsaTravaCadastroPocket = False
    Left = 450
    Top = 235
  end
  object NotaFiscalInutilizada: TFDQuery
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select *'
      'from NOTA_FISCAL'
      'where (TIPO = '#39'NFeInut'#39')'
      '      and (NF_AMBIENTE = :Ambiente)'
      '      and (NF_DT_INUTILIZACAO between :DtInicio and :DtFim)')
    Left = 620
    Top = 248
    ParamData = <
      item
        Name = 'AMBIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DTINICIO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'DTFIM'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object wrNotaFiscalLocal: TwrNotaFiscal
    Empresa = FrmPrincipal.Empresa
    NF_Provedor = NF_ProvedorLocal
    NotaTipo = nftNFSe
    NotaAmbiente = taProducao
    Left = 579
    Top = 331
  end
  object NF_ProvedorLocal: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT * FROM NF_PROVEDOR'
      'WHERE (DESCRICAO LIKE :Descricao)')
    Left = 607
    Top = 331
    ParamData = <
      item
        Name = 'DESCRICAO'
        ParamType = ptInput
      end>
  end
end
