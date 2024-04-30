object FrmPDV_TipoNF_Selecao: TFrmPDV_TipoNF_Selecao
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Selecione o tipo de NF'
  ClientHeight = 227
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  StyleElements = [seFont, seClient]
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 779
    Height = 227
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    object tcEscolheNF: TdxTileControl
      Left = 0
      Top = 0
      Width = 250
      Height = 200
      Align = alNone
      AutoSize = True
      OptionsView.CenterContentHorz = True
      OptionsView.CenterContentVert = True
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupIndent = 0
      OptionsView.GroupMaxRowCount = 1
      OptionsView.IndentHorz = 0
      OptionsView.IndentVert = 0
      OptionsView.ItemHeight = 100
      OptionsView.ItemIndent = 0
      OptionsView.ItemWidth = 250
      TabOrder = 0
      Transparent = True
      OnKeyDown = tcEscolheNFKeyDown
      object dxTileControlGroup2: TdxTileControlGroup
        Index = 0
      end
      object tiEscolheSemNota: TdxTileControlItem
        Tag = -1
        GroupIndex = 0
        IndexInGroup = 0
        RowCount = 2
        Style.BorderColor = clBtnShadow
        Style.GradientBeginColor = clGray
        Style.GradientEndColor = clGrayText
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -33
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Sem Nota'
        Text2.Align = oaBottomCenter
        Text2.AssignedValues = []
        Text2.IndentVert = 40
        Text2.Value = 'Finaliza sem emitir nota fiscal.'
        Text2.WordWrap = True
        Text3.Align = oaTopLeft
        Text3.AssignedValues = [avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -27
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.IndentHorz = 10
        Text3.Value = '0'
        Text4.AssignedValues = []
        OnClick = tiEscolheSemNotaClick
      end
      object tiEscolheNFe: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        RowCount = 2
        Style.BorderColor = 551663654
        Style.GradientBeginColor = 551332608
        Style.GradientEndColor = 551796480
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -33
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'NF-e'
        Text2.Align = oaBottomCenter
        Text2.AssignedValues = []
        Text2.IndentVert = 40
        Text2.Value = 'Emitir Nota Fiscal de Produto.'
        Text2.WordWrap = True
        Text3.Align = oaTopLeft
        Text3.AssignedValues = [avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -27
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.IndentHorz = 10
        Text3.Value = '1'
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiEscolheSemNotaClick
      end
      object tiEscolheNFCe: TdxTileControlItem
        Tag = 1
        GroupIndex = 0
        IndexInGroup = 2
        RowCount = 2
        Style.BorderColor = 539409370
        Style.GradientBeginColor = 56038
        Style.GradientEndColor = 538626272
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -33
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'NFC-e'
        Text2.Align = oaBottomCenter
        Text2.AssignedValues = []
        Text2.IndentVert = 40
        Text2.Value = 'Emitir Nota Fiscal de Consumidor.'
        Text2.WordWrap = True
        Text3.Align = oaTopLeft
        Text3.AssignedValues = [avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -27
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.IndentHorz = 10
        Text3.Value = '2'
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiEscolheSemNotaClick
      end
      object tiEscolheNFSe: TdxTileControlItem
        Tag = 2
        GroupIndex = 0
        IndexInGroup = 3
        RowCount = 2
        Style.BorderColor = 541559278
        Style.GradientBeginColor = 538992358
        Style.GradientEndColor = 541559278
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -33
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'NFS-e'
        Text2.Align = oaBottomCenter
        Text2.AssignedValues = []
        Text2.IndentVert = 40
        Text2.Value = 'Emitir Nota Fiscal de Servi'#231'o.'
        Text2.WordWrap = True
        Text3.Align = oaTopLeft
        Text3.AssignedValues = [avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -27
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.IndentHorz = 10
        Text3.Value = '3'
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiEscolheSemNotaClick
      end
      object tcEscolheNFSimples: TdxTileControlItem
        Tag = 3
        GroupIndex = -1
        IndexInGroup = -1
        Text1.AssignedValues = []
        Text1.Value = 'Simples'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
      end
    end
    object cxLabel1: TcxLabel
      Left = 0
      Top = 201
      Caption = 'Ou pressione ESC para Sair'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 125
      AnchorY = 214
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahCenter
      AlignVert = avCenter
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahCenter
      AlignVert = avTop
      Control = tcEscolheNF
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 240
    Top = 40
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
  object Venda_Tipo: TFDQuery
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select CODIGO, DESCRICAO'
      'from VENDA_TIPO'
      'where (ATIVO = '#39'S'#39')'
      '      and (MODELO = :Modelo)')
    Left = 184
    Top = 40
    ParamData = <
      item
        Name = 'MODELO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object Venda_TipoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Venda_TipoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
  end
  object DSVenda_Tipo: TDataSource
    DataSet = Venda_Tipo
    Left = 212
    Top = 40
  end
end
