object Frame_Selecionar_Variacao: TFrame_Selecionar_Variacao
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Extras (Impostos/Descontos/Acr'#233'scimos)'
  ClientHeight = 329
  ClientWidth = 706
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 298
    Top = 95
    Width = 25
    Height = 13
    Alignment = taRightJustify
    Caption = 'Label'
    Color = 16505534
    ParentColor = False
    Transparent = False
  end
  object lblPCustoMateriais: TLabel
    Left = 0
    Top = 22
    Width = 22
    Height = 13
    Alignment = taRightJustify
    Caption = '0,00'
    Color = 16505534
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBackground
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object lblVSaldoSemMateriais: TLabel
    Left = 190
    Top = 44
    Width = 28
    Height = 16
    Alignment = taRightJustify
    Caption = '0,00'
    Color = 16505534
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 706
    Height = 329
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 323
    object cxButton1: TcxButton
      Left = 0
      Top = 304
      Width = 353
      Height = 25
      Caption = 'Fechar'
      ModalResult = 2
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 354
      Top = 304
      Width = 352
      Height = 25
      Caption = 'Confirmar'
      ModalResult = 1
      TabOrder = 2
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 706
      Height = 303
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1SKU: TcxGridDBColumn
          DataBinding.FieldName = 'SKU'
          Width = 145
        end
        object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object cxGrid1DBTableView1CODPRODUTO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO'
          Visible = False
        end
        object cxGrid1DBTableView1TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'TIPO'
          Visible = False
        end
        object cxGrid1DBTableView1PORCENTAGEM: TcxGridDBColumn
          DataBinding.FieldName = 'PORCENTAGEM'
          Visible = False
        end
        object cxGrid1DBTableView1QUANT: TcxGridDBColumn
          DataBinding.FieldName = 'QUANT'
          Visible = False
        end
        object cxGrid1DBTableView1DE: TcxGridDBColumn
          DataBinding.FieldName = 'DE'
          Visible = False
        end
        object cxGrid1DBTableView1CODPRODUTO_VINCULADO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO_VINCULADO'
          Visible = False
        end
        object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRICAO'
          Visible = False
        end
        object cxGrid1DBTableView1REFERENCIA: TcxGridDBColumn
          DataBinding.FieldName = 'REFERENCIA'
          Visible = False
        end
        object cxGrid1DBTableView1PRODUTO: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'PRODUTO'
          Width = 342
        end
        object cxGrid1DBTableView1VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 217
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  object DS: TDataSource
    Left = 121
    Top = 64
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 149
    Top = 64
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
end
