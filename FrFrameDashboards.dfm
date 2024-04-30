object FrameDashboards: TFrameDashboards
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Dashboards'
  ClientHeight = 396
  ClientWidth = 948
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  DesignSize = (
    948
    396)
  PixelsPerInch = 96
  TextHeight = 13
  object MainLayout: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 948
    Height = 396
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = LafDashboard
    ShowDesignSelectors = False
    object LbTitulo: TcxLabel
      Left = 25
      Top = 15
      Caption = 'Dashboard'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = 6316128
      Style.IsFontAssigned = True
      Transparent = True
    end
    object MainLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object GrupoTopo: TdxLayoutGroup
      Parent = MainLayoutGroup_Root
      Offsets.Left = 15
      Offsets.Right = 15
      Offsets.Top = 5
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object GrupoBlocos: TdxLayoutGroup
      Parent = MainLayoutGroup_Root
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ScrollOptions.Vertical = smAuto
      ShowBorder = False
      Index = 2
    end
    object Separador1: TdxLayoutSeparatorItem
      Parent = MainLayoutGroup_Root
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object LiLbTitulo: TdxLayoutItem
      Parent = GrupoTopo
      AlignHorz = ahLeft
      AlignVert = avTop
      Padding.AssignedValues = [lpavLeft, lpavTop]
      CaptionOptions.Text = 'T'#237'tulo do DashBoard'
      CaptionOptions.Visible = False
      Control = LbTitulo
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 122
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object BtnConfiguracoes: TcxButton
    Left = 914
    Top = 8
    Width = 26
    Height = 26
    Hint = 'Configura'#231#245'es'
    Anchors = [akTop, akRight]
    Colors.DefaultText = 16744448
    Colors.HotText = 16744448
    Colors.PressedText = 16744448
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D260600000000000036000000280000001300000014000000010020000000
      000000000000C40E0000C40E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002F2F2F6D545454C034343477000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001616161DE6F6F6FFF636363E4010101020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001B1B1B3F515151BA1A1A1A3C00000001242424526F6F6FFF6F6F
      6FFF6F6F6FFF2424245200000001181818364B4B4BAD1A1A1A3C000000000000
      00000000000000000000000000000606060D6A6A6AF36F6F6FFF6F6F6FFF6262
      62E26F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF626262E26F6F6FFF6F6F
      6FFF696969F20808081200000000000000000000000000000000000000005050
      50B76F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
      6FFF6F6F6FFF6F6F6FFF6F6F6FFF525252BD0000000000000000000000000000
      000000000000000000001E1E1E456F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6C6C
      6CF9606060DD6D6D6DFA6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF1E1E1E440000
      000000000000000000000000000000000000000000002B2B2B636F6F6FFF6F6F
      6FFF6F6F6FFF474747A2070707110000000008080813494949A86F6F6FFF6F6F
      6FFF6F6F6FFF2A2A2A6000000000000000000000000000000000171717343B3B
      3B88656565E96F6F6FFF6F6F6FFF5A5A5ACE0101010300000000000000000000
      0000020202055D5D5DD56F6F6FFF6F6F6FFF656565E83737377F0E0E0E210000
      0000000000006F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF3535357A0000
      000000000000000000000000000000000000393939836F6F6FFF6F6F6FFF6F6F
      6FFF6F6F6FFF6F6F6FFF00000000000000006F6F6FFF6F6F6FFF6F6F6FFF6F6F
      6FFF6F6F6FFF3636367C00000000000000000000000000000000000000003939
      39836F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF00000000000000001111
      11263A3A3A85666666EB6F6F6FFF6F6F6FFF595959CD01010103000000000000
      000000000000020202045C5C5CD36F6F6FFF6F6F6FFF666666EA3D3D3D8C1818
      1837000000000000000000000000000000002C2C2C656F6F6FFF6F6F6FFF6F6F
      6FFF4545459F0606060E000000000707070F474747A26F6F6FFF6F6F6FFF6F6F
      6FFF2929295F0000000000000000000000000000000000000000000000002020
      20496F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6C6C6CF85E5E5ED96C6C6CF76F6F
      6FFF6F6F6FFF6F6F6FFF6F6F6FFF1C1C1C400000000000000000000000000000
      00000000000000000001555555C46F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
      6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF4D4D4DB00000
      0000000000000000000000000000000000000A0A0A166B6B6BF56F6F6FFF6F6F
      6FFF646464E66F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF646464E66F6F
      6FFF6F6F6FFF696969F10404040A000000000000000000000000000000000000
      00001C1C1C414B4B4BAD18181836000000012828285B6F6F6FFF6F6F6FFF6F6F
      6FFF23232351000000011D1D1D42535353BE1B1B1B3D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0103656565E96F6F6FFF5F5F5FDA000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003636367B545454C02E2E2E6A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    OptionsImage.Spacing = 0
    SpeedButtonOptions.CanBeFocused = False
    SpeedButtonOptions.Flat = True
    SpeedButtonOptions.Transparent = True
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BtnConfiguracoesClick
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 388
    Top = 204
    object LafDashboard: TdxLayoutSkinLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013White'
      PixelsPerInch = 96
    end
    object LafDashboardGrupoBlocos: TdxLayoutSkinLookAndFeel
      ItemOptions.Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      ItemOptions.Padding.Bottom = 3
      ItemOptions.Padding.Left = 3
      ItemOptions.Padding.Right = 3
      ItemOptions.Padding.Top = 3
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013White'
      PixelsPerInch = 96
    end
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      GroupOptions.Color = clWhite
      ItemOptions.ControlBorderColor = clRed
      ItemOptions.ControlBorderStyle = lbsFlat
      PixelsPerInch = 96
    end
  end
  object DashBoards: TFDQuery
    BeforeOpen = DashBoardsBeforeOpen
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    SQL.Strings = (
      'Select C.*, CF.DESCRICAO as Form  From DashBoards  C'
      
        'left join CONFIGURACAO_FORM CF ON CF.CODIGO = C.CODCONFIGURACAO_' +
        'FORM'
      'WHERE (C.CODIGO = :Codigo)')
    Left = 360
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object DashBoards_Atalho_Rapido: TFDQuery
    BeforeOpen = DashBoardsBeforeOpen
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DataSource1
    MasterFields = 'CODIGO'
    DetailFields = 'CODDASHBOARD'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'Select C.*, A.* FROM DashBoards_Atalho_Rapido  C'
      'left join Atalho_Rapido a ON A.CODIGO = C.CODAtalho_Rapido'
      'WHERE (C.CODDashBoard= :Codigo)')
    Left = 360
    Top = 204
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object DataSource1: TDataSource
    DataSet = DashBoards
    Left = 388
    Top = 176
  end
  object TransaFD: TFDTransaction
    Options.Isolation = xiReadCommitted
    Options.AutoStop = False
    Options.DisconnectAction = xdRollback
    Connection = DMBanco.Banco
    Left = 416
    Top = 204
  end
  object Atalho_Rapido: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select * from Atalho_Rapido'
      '')
    Left = 360
    Top = 284
    object Atalho_RapidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Atalho_RapidoCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Origin = 'CODUSUARIO'
    end
    object Atalho_RapidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 500
    end
    object Atalho_RapidoQUANT_REGISTROS: TIntegerField
      FieldName = 'QUANT_REGISTROS'
      Origin = 'QUANT_REGISTROS'
    end
    object Atalho_RapidoGRAFICO_PERIODO: TStringField
      FieldName = 'GRAFICO_PERIODO'
      Origin = 'GRAFICO_PERIODO'
      Size = 10
    end
    object Atalho_RapidoGRAFICO_TIPO: TStringField
      FieldName = 'GRAFICO_TIPO'
      Origin = 'GRAFICO_TIPO'
    end
    object Atalho_RapidoATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object Atalho_RapidoDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object Atalho_RapidoWIDTH: TIntegerField
      FieldName = 'WIDTH'
      Origin = 'WIDTH'
    end
    object Atalho_RapidoHEIGHT: TIntegerField
      FieldName = 'HEIGHT'
      Origin = 'HEIGHT'
    end
    object Atalho_RapidoCODCONFIGURACAO_FILTRO: TIntegerField
      FieldName = 'CODCONFIGURACAO_FILTRO'
      Origin = 'CODCONFIGURACAO_FILTRO'
    end
    object Atalho_RapidoCODCONFIGURACAO_AGRUPAMENTO: TIntegerField
      FieldName = 'CODCONFIGURACAO_AGRUPAMENTO'
      Origin = 'CODCONFIGURACAO_AGRUPAMENTO'
    end
    object Atalho_RapidoCODCONFIGURACAO_FORM: TIntegerField
      FieldName = 'CODCONFIGURACAO_FORM'
      Origin = 'CODCONFIGURACAO_FORM'
    end
    object Atalho_RapidoTEM_PERIODO: TStringField
      FieldName = 'TEM_PERIODO'
      Origin = 'TEM_PERIODO'
      Size = 1
    end
    object Atalho_RapidoTEM_QUANT_REGISTROS: TStringField
      FieldName = 'TEM_QUANT_REGISTROS'
      Origin = 'TEM_QUANT_REGISTROS'
      Size = 1
    end
    object Atalho_RapidoSQL: TStringField
      FieldName = 'SQL'
      Origin = 'SQL'
      Size = 5000
    end
    object Atalho_RapidoCAMPO: TStringField
      FieldName = 'CAMPO'
      Origin = 'CAMPO'
      Size = 100
    end
    object Atalho_RapidoFORMATO: TStringField
      FieldName = 'FORMATO'
      Origin = 'FORMATO'
      Size = 50
    end
    object Atalho_RapidoPERIODO: TStringField
      FieldName = 'PERIODO'
      Origin = 'PERIODO'
    end
    object Atalho_RapidoABA: TStringField
      FieldName = 'ABA'
      Origin = 'ABA'
      Size = 50
    end
    object Atalho_RapidoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 500
    end
    object Atalho_RapidoBLOCO: TStringField
      FieldName = 'BLOCO'
      Origin = 'BLOCO'
    end
    object Atalho_RapidoFILTRO: TStringField
      FieldName = 'FILTRO'
      Origin = 'FILTRO'
      Size = 1000
    end
    object Atalho_RapidoAGRUPAMENTO: TStringField
      FieldName = 'AGRUPAMENTO'
      Origin = 'AGRUPAMENTO'
      Size = 500
    end
    object Atalho_RapidoCAMPOPERIODO: TStringField
      FieldName = 'CAMPOPERIODO'
      Origin = 'CAMPOPERIODO'
      Size = 255
    end
    object Atalho_RapidoCAMPO_CATEGORIA: TStringField
      FieldName = 'CAMPO_CATEGORIA'
      Origin = 'CAMPO_CATEGORIA'
      Size = 100
    end
    object Atalho_RapidoGRAFICO: TMemoField
      FieldName = 'GRAFICO'
      Origin = 'GRAFICO'
      BlobType = ftMemo
    end
    object Atalho_RapidoCOLUNA1: TStringField
      FieldName = 'COLUNA1'
      Origin = 'COLUNA1'
      Size = 250
    end
    object Atalho_RapidoCOLUNA2: TStringField
      FieldName = 'COLUNA2'
      Origin = 'COLUNA2'
      Size = 250
    end
    object Atalho_RapidoCOLUNA3: TStringField
      FieldName = 'COLUNA3'
      Origin = 'COLUNA3'
      Size = 250
    end
    object Atalho_RapidoCOLUNA4: TStringField
      FieldName = 'COLUNA4'
      Origin = 'COLUNA4'
      Size = 250
    end
    object Atalho_RapidoCOLUNA5: TStringField
      FieldName = 'COLUNA5'
      Origin = 'COLUNA5'
      Size = 250
    end
    object Atalho_RapidoCOLUNA6: TStringField
      FieldName = 'COLUNA6'
      Origin = 'COLUNA6'
      Size = 250
    end
    object Atalho_RapidoCOLUNA7: TStringField
      FieldName = 'COLUNA7'
      Origin = 'COLUNA7'
      Size = 250
    end
  end
  object DSAtalho_Rapido: TDataSource
    DataSet = Atalho_Rapido
    Left = 388
    Top = 284
  end
end
