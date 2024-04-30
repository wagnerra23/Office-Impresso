object FrmProduto_Preco: TFrmProduto_Preco
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 234
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object MainLayout: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 530
    Height = 234
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    object GridTabelaPreco: TcxGrid
      Left = 0
      Top = 0
      Width = 530
      Height = 208
      TabOrder = 0
      object GridTabelaPrecoDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DSProduto_Preco
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object GridTabelaPrecoDBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridTabelaPrecoDBTableView1CODPRODUTO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridTabelaPrecoDBTableView1DE: TcxGridDBColumn
          Caption = 'De'
          DataBinding.FieldName = 'DE'
          Width = 98
        end
        object GridTabelaPrecoDBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          Width = 112
        end
        object GridTabelaPrecoDBTableView1QUANT: TcxGridDBColumn
          Caption = 'Quant'
          DataBinding.FieldName = 'QUANT'
          SortIndex = 0
          SortOrder = soAscending
          Width = 72
        end
        object GridTabelaPrecoDBTableView1PORCENTAGEM: TcxGridDBColumn
          Caption = '% Desconto'
          DataBinding.FieldName = 'PORCENTAGEM'
          Width = 93
        end
        object GridTabelaPrecoDBTableView1Valor: TcxGridDBColumn
          Caption = 'R$ Valor'
          DataBinding.FieldName = 'Valor'
          Width = 153
        end
      end
      object GridTabelaPrecoLevel1: TcxGridLevel
        GridView = GridTabelaPrecoDBTableView1
      end
    end
    object BtnCadProduto: TcxButton
      Left = 336
      Top = 209
      Width = 194
      Height = 25
      Caption = 'Abrir Cadastro do Produto'
      OptionsImage.ImageIndex = 62
      TabOrder = 1
      OnClick = BtnCadProdutoClick
    end
    object MainLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object LiGridTabelaPreco: TdxLayoutItem
      Parent = MainLayoutGroup_Root
      AlignVert = avClient
      Control = GridTabelaPreco
      ControlOptions.OriginalHeight = 55
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiBtnCadProduto: TdxLayoutItem
      Parent = MainLayoutGroup_Root
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = BtnCadProduto
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 194
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object DSProduto_Preco: TDataSource
    Left = 144
    Top = 76
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 172
    Top = 76
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
end
