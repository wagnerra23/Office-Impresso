object FrmProdutoGradePanel: TFrmProdutoGradePanel
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Conversor de unidade de medida'
  ClientHeight = 368
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMode = pmAuto
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 495
    Height = 368
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
    object lblTitulo: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Selecione o Modelo de Grade'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3815994
      Style.Font.Height = -32
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Transparent = True
      AnchorX = 248
    end
    object tcMenu: TdxTileControl
      Left = 10
      Top = 316
      Width = 475
      Height = 42
      Align = alNone
      OptionsBehavior.ItemMoving = False
      OptionsView.CenterContentHorz = True
      OptionsView.CenterContentVert = True
      OptionsView.GroupBlockMaxColumnCount = 6
      OptionsView.GroupIndent = 0
      OptionsView.GroupMaxRowCount = 400
      OptionsView.IndentHorz = 4
      OptionsView.IndentVert = 0
      OptionsView.ItemHeight = 35
      OptionsView.ItemWidth = 200
      TabOrder = 0
      Transparent = True
      object dxTileControlGroup1: TdxTileControlGroup
        Index = 0
      end
      object btnAplicar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Style.BorderColor = 8075648
        Style.GradientBeginColor = 8075648
        Style.GradientEndColor = 8075648
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -13
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = []
        Text1.Value = 'Aplicar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = btnAplicarClick
      end
      object btnCancelar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -13
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = []
        Text1.Value = 'Cancelar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = btnCancelarClick
      end
    end
    object cbVariacao: TcxDBLookupComboBox
      Left = 10
      Top = 68
      AutoSize = False
      DataBinding.DataField = 'CODPRODUTO_GRADE_MODELO'
      DataBinding.DataSource = DS
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.Color = 13432786
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Height = 21
      Width = 475
    end
    object GridRecursos: TcxGrid
      Left = 10
      Top = 90
      Width = 475
      Height = 225
      TabOrder = 3
      object GridEtapas: TcxGridDBTableView
        DragMode = dmAutomatic
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSProdutoGradeModeloItem
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object GridEtapasDESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 292
        end
        object GridEtapasDT_ALTERACAO: TcxGridDBColumn
          Caption = 'Dt. Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 181
        end
      end
      object GridRecursosLevel1: TcxGridLevel
        GridView = GridEtapas
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      Hidden = True
      ItemIndex = 3
      Padding.Bottom = 10
      Padding.Left = 10
      Padding.Right = 10
      Padding.Top = 10
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Visible = False
      CaptionOptions.Visible = False
      Control = lblTitulo
      ControlOptions.OriginalHeight = 43
      ControlOptions.OriginalWidth = 7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avBottom
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = False
      SizeOptions.Width = 350
      Control = tcMenu
      ControlOptions.OriginalHeight = 42
      ControlOptions.OriginalWidth = 1000
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Selecione o modelo de Varia'#231#227'o:'
      CaptionOptions.Layout = clTop
      Control = cbVariacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      Control = GridRecursos
      ControlOptions.OriginalHeight = 351
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object cxLabel3: TcxLabel
    Left = 0
    Top = 880
    AutoSize = False
    Caption = 'Peso Unit'#225'rio (KG)'
    Style.HotTrack = False
    Style.Shadow = False
    Style.TextStyle = [fsBold]
    Style.TransparentBorder = True
    Properties.Alignment.Horz = taCenter
    Transparent = True
    Visible = False
    Height = 21
    Width = 149
    AnchorX = 75
  end
  object DS: TDataSource
    Left = 349
    Top = 19
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 377
    Top = 19
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
      LookAndFeel.Kind = lfStandard
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
    object dxLayoutStandardLookAndFeelEquacao: TdxLayoutStandardLookAndFeel
      ItemOptions.ControlBorderColor = clBlack
      PixelsPerInch = 96
    end
  end
  object DSProduto_Preco: TDataSource
    Left = 349
    Top = 47
  end
  object DSProdutoGradeModeloItem: TDataSource
    DataSet = ProdutoGradeModeloItem
    Left = 336
    Top = 128
  end
  object ProdutoGradeModeloItem: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODPRODUTO_GRADE_MODELO'
    DetailFields = 'CODIGO'
    Connection = DMBanco.Banco
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM PRODUTO_GRADE_MODELO_ITEM'
      'where CODPRODUTO_GRADE_MODELO = :CODPRODUTO_GRADE_MODELO')
    Left = 364
    Top = 128
    ParamData = <
      item
        Name = 'CODPRODUTO_GRADE_MODELO'
        ParamType = ptInput
      end>
  end
end
