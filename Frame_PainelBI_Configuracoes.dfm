inherited FrameBI_Configuracoes: TFrameBI_Configuracoes
  Width = 1504
  Hint = 'DashBoard'
  OnEnter = FrameEnter
  ExplicitWidth = 1504
  object tcBase: TdxTileControl
    Left = 0
    Top = 0
    Width = 1504
    Height = 617
    OptionsBehavior.ScrollMode = smScrollButtons
    OptionsDetailAnimate.AnimationInterval = 200
    OptionsView.CenterContentHorz = True
    OptionsView.CenterContentVert = True
    OptionsView.GroupIndent = 8
    OptionsView.IndentHorz = 0
    OptionsView.IndentVert = 8
    OptionsView.ItemHeight = 130
    OptionsView.ItemWidth = 150
    TabOrder = 0
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = 9737364
    Title.Font.Height = -35
    Title.Font.Name = 'Segoe UI'
    Title.Font.Style = []
    Title.IndentHorz = 0
    Title.IndentVert = 0
    OnItemActivateDetail = tcBaseItemActivateDetail
    ExplicitLeft = 1
    object dxTileControl1Group1: TdxTileControlGroup
      Index = 0
    end
    object tgPowerBI: TdxTileControlGroup
      Caption.Text = 'Power BI'
      Index = 1
    end
    object tiBasePadrao: TdxTileControlItem
      Tag = 106
      GroupIndex = 0
      IndexInGroup = 0
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Instale um APP'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
    end
    object tiVenda: TdxTileControlItem
      Tag = 82
      Glyph.ImageIndex = 31
      Glyph.Images = FrmPrincipal.imgTile64
      GroupIndex = 0
      IndexInGroup = 1
      Size = tcisLarge
      Text1.Align = oaBottomCenter
      Text1.AssignedValues = []
      Text1.Value = 'Venda'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      Visible = False
    end
    object tiConfiguracao: TdxTileControlItem
      Tag = 73
      Glyph.ImageIndex = 31
      Glyph.Images = FrmPrincipal.imgTile64
      GroupIndex = 1
      IndexInGroup = 7
      Size = tcisLarge
      Style.BorderColor = 539409370
      Style.GradientBeginColor = 56038
      Style.GradientEndColor = 538626272
      Text1.Align = oaBottomCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -13
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Configura'#231#245'es'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      Visible = False
    end
    object tiEstoque: TdxTileControlItem
      Tag = 11
      Glyph.ImageIndex = 23
      Glyph.Images = FrmPrincipal.imgTile64
      GroupIndex = 1
      IndexInGroup = 0
      Size = tcisLarge
      Text1.Align = oaBottomCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -13
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Estoque'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      Visible = False
    end
    object tiFinanceiro: TdxTileControlItem
      Tag = 5
      Glyph.ImageIndex = 24
      Glyph.Images = FrmPrincipal.imgTile64
      GroupIndex = 1
      IndexInGroup = 1
      Size = tcisLarge
      Text1.Align = oaBottomCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -13
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Financeiro'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      Visible = False
    end
    object tiRH: TdxTileControlItem
      Tag = 49
      Glyph.ImageIndex = 16
      Glyph.Images = FrmPrincipal.imgTile64
      GroupIndex = 1
      IndexInGroup = 2
      Size = tcisLarge
      Text1.Align = oaBottomCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -13
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'RH'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      Visible = False
    end
    object tiProducao: TdxTileControlItem
      Tag = 3
      Glyph.ImageIndex = 6
      Glyph.Images = FrmPrincipal.imgTile64
      GroupIndex = 1
      IndexInGroup = 3
      Size = tcisLarge
      Text1.Align = oaBottomCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -13
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Produc'#227'o'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      Visible = False
    end
    object tiFaturamento: TdxTileControlItem
      Tag = 21
      Glyph.ImageIndex = 8
      Glyph.Images = FrmPrincipal.imgTile64
      GroupIndex = 1
      IndexInGroup = 4
      Size = tcisLarge
      Text1.Align = oaBottomCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -13
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Faturamento'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      Visible = False
    end
    object tiCompras: TdxTileControlItem
      Tag = 6
      Glyph.ImageIndex = 7
      Glyph.Images = FrmPrincipal.imgTile64
      GroupIndex = 1
      IndexInGroup = 5
      Size = tcisLarge
      Text1.Align = oaBottomCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -13
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Compras'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      Visible = False
    end
    object tiAssociacao: TdxTileControlItem
      Tag = 52
      Glyph.ImageIndex = 40
      Glyph.Images = FrmPrincipal.imgTile64
      GroupIndex = 1
      IndexInGroup = 6
      Size = tcisLarge
      Text1.Align = oaBottomCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -13
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Associa'#231#227'o'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      Visible = False
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 656
    Top = 292
    object ntnAgruparPorBLOCO1: TMenuItem
      Caption = 'Bloco'
    end
    object ntnAgruparFROM1: TMenuItem
      Caption = 'Tela'
    end
  end
end
