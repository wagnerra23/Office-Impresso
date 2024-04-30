object Frame_Rateio_Equipe: TFrame_Rateio_Equipe
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Centro de Custo Financeiro'
  ClientHeight = 450
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 651
    Height = 450
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 354
    object cxGrid1: TcxGrid
      Left = 10
      Top = 140
      Width = 631
      Height = 269
      TabOrder = 11
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DS
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
          end
          item
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object cxGrid1DBTableView1Equipe: TcxGridDBColumn
          Caption = 'Equipe'
          DataBinding.FieldName = 'EQUIPE'
          Width = 204
        end
        object cxGrid1DBTableView1QTD_HORAS_TRABALHADAS_MENSAL: TcxGridDBColumn
          Caption = 'Horas Totais'
          DataBinding.FieldName = 'QTD_HORAS_TRABALHADAS_MENSAL'
          Width = 201
        end
        object cxGrid1DBTableView1CODEQUIPE: TcxGridDBColumn
          Caption = 'C'#243'd Equipe'
          DataBinding.FieldName = 'CODEQUIPE'
          Visible = False
          Width = 153
        end
        object cxGrid1DBTableView1PERC_RATEIO_EQUIPE: TcxGridDBColumn
          Caption = '% Rateio'
          DataBinding.FieldName = 'PERC_RATEIO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00;-0.00'
          Width = 198
        end
        object cxGrid1DBTableView1QTD_HORAS_RATEADAS: TcxGridDBColumn
          Caption = 'Horas Rateadas'
          DataBinding.FieldName = 'QTD_HORAS_RATEADAS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00;-0.00'
          Width = 201
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object edtEquipeÎCentro_Trabalho: TcxButtonEdit
      Left = 10
      Top = 113
      AutoSize = False
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.CharCase = ecUpperCase
      Properties.ClickKey = 113
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 6
      Height = 21
      Width = 121
    end
    object edtEquipeÎCentro_TrabalhoÎDESCRICAO: TcxLabel
      Left = 137
      Top = 111
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.HotTrack = False
      Height = 23
      Width = 368
    end
    object edtPercentual: TcxCurrencyEdit
      Left = 511
      Top = 113
      AutoSize = False
      Properties.DisplayFormat = '0'
      Properties.OnValidate = edtPercentualPropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Height = 21
      Width = 50
    end
    object btnAdicionarCentroCusto: TcxButton
      Left = 567
      Top = 93
      Width = 34
      Height = 41
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 9
      OnClick = btnAdicionarCentroCustoClick
    end
    object btnRemoverCentroCusto: TcxButton
      Left = 607
      Top = 93
      Width = 34
      Height = 41
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 10
      TabStop = False
      OnClick = btnRemoverCentroCustoClick
    end
    object btnFechar: TcxButton
      Left = 10
      Top = 415
      Width = 631
      Height = 25
      Caption = 'Fechar'
      TabOrder = 12
      OnClick = btnFecharClick
    end
    object edtDireto: TcxCurrencyEdit
      Left = 426
      Top = 28
      AutoSize = False
      Properties.DisplayFormat = '0;-0'
      Properties.OnEditValueChanged = edtIndiretoPropertiesEditValueChanged
      Properties.OnValidate = edtDiretoPropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Height = 23
      Width = 95
    end
    object edtIndireto: TcxCurrencyEdit
      Left = 527
      Top = 28
      AutoSize = False
      Properties.DisplayFormat = '0;-0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = clSilver
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Height = 23
      Width = 114
    end
    object edtRazaoSocial: TcxLabel
      Left = 10
      Top = 28
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Height = 23
      Width = 324
    end
    object edtQtdHoras: TcxCurrencyEdit
      Left = 340
      Top = 28
      AutoSize = False
      Properties.DisplayFormat = '0;-0'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = clSilver
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Height = 23
      Width = 80
    end
    object cxLabel2: TcxLabel
      Left = 10
      Top = 69
      Caption = 'Ratear Custo Direto por Equipe:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lblHoras: TcxLabel
      Left = 252
      Top = 69
      Caption = '80 Horas'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxGrid1
      ControlOptions.OriginalHeight = 327
      ControlOptions.OriginalWidth = 806
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Centro de Custo'
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'C'#243'd. Equipe'
      CaptionOptions.Layout = clTop
      Control = edtEquipeÎCentro_Trabalho
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtEquipeÎCentro_TrabalhoÎDESCRICAO
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 396
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'Perc.'
      CaptionOptions.Layout = clTop
      Control = edtPercentual
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAdicionarCentroCusto
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 34
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnRemoverCentroCusto
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 34
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Visible = False
      Control = btnFechar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = '% Direto'
      CaptionOptions.Layout = clTop
      Control = edtDireto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = '% Indireto'
      CaptionOptions.Layout = clTop
      Control = edtIndireto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object liedtRazaoSocial: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Funcion'#225'rio'
      CaptionOptions.Layout = clTop
      Control = edtRazaoSocial
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtQtdHoras: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'Qtd Horas'
      CaptionOptions.Layout = clTop
      Control = edtQtdHoras
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = cxLabel2
      ControlOptions.OriginalHeight = 18
      ControlOptions.OriginalWidth = 236
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Visible = False
      Control = lblHoras
      ControlOptions.OriginalHeight = 18
      ControlOptions.OriginalWidth = 68
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 429
    Top = 224
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
    object dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel
      GroupOptions.Color = clWhite
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.TextColor = 7237230
      ItemOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.Padding.AssignedValues = [lpavTop]
      ItemOptions.Padding.Top = 2
      ItemOptions.ControlBorderStyle = lbsFlat
      LookAndFeel.NativeStyle = True
      LookAndFeel.ScrollbarMode = sbmDefault
      PixelsPerInch = 96
    end
    object dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel
      GroupOptions.Color = clWhite
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.TextColor = 7237230
      ItemOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.ControlBorderStyle = lbsFlat
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      LookAndFeel.NativeStyle = True
      LookAndFeel.ScrollbarMode = sbmDefault
      PixelsPerInch = 96
    end
  end
  object DS: TDataSource
    DataSet = RateioFuncionarioSalario
    Left = 401
    Top = 224
  end
  object RateioFuncionarioSalario: TFDQuery
    BeforeOpen = RateioFuncionarioSalarioBeforeOpen
    BeforePost = RateioFuncionarioSalarioBeforePost
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DSExterno
    MasterFields = 'PESSOA_FUNCIONARIO_CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT FS.*, CT.DESCRICAO AS EQUIPE FROM FUNCIONARIO_SALARIO FS'
      'LEFT JOIN CENTRO_TRABALHO CT ON CT.CODIGO = FS.CODEQUIPE'
      'WHERE FS.COMPETENCIA BETWEEN :D1 AND :D2'
      'AND FS.PESSOA_FUNCIONARIO_CODIGO = :PESSOA_FUNCIONARIO_CODIGO'
      'AND COALESCE(FS.CODEQUIPE, 0) <> 0'
      '')
    Left = 373
    Top = 224
    ParamData = <
      item
        Name = 'D1'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'D2'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'PESSOA_FUNCIONARIO_CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
  object DSExterno: TDataSource
    Left = 400
    Top = 196
  end
  object TransaFD: TFDTransaction
    Options.Isolation = xiReadCommitted
    Options.AutoStop = False
    Options.DisconnectAction = xdRollback
    Connection = DMBanco.Banco
    Left = 428
    Top = 196
  end
  object DSPessoaSelecionada: TDataSource
    Left = 456
    Top = 196
  end
end
